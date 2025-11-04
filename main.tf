/**
 * # Fortigate BGP configuration module
 *
 * This terraform module configures BGP on a firewall
 */
terraform {
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
    }
  }
}
locals {
  vdom_bgp_yaml = {
    for vdom in var.vdoms : vdom => yamldecode(file("${var.config_path}/${vdom}/bgp.yaml")) if fileexists("${var.config_path}/${vdom}/bgp.yaml")
  }
  bgp_peers_yaml          = { for vdom in var.vdoms : vdom => try(local.vdom_bgp_yaml[vdom].peers, []) }
  prefix_lists_yaml       = { for vdom in var.vdoms : vdom => try(local.vdom_bgp_yaml[vdom].prefix_lists, []) }
  route_maps_yaml         = { for vdom in var.vdoms : vdom => try(local.vdom_bgp_yaml[vdom].route_maps, []) }
  aggregate_address_yaml  = { for vdom in var.vdoms : vdom => try(local.vdom_bgp_yaml[vdom].aggregate_address, []) }

  bgp_peers     = flatten([
    for vdom in var.vdoms : [
      for ip, peer in local.bgp_peers_yaml[vdom] : [ merge(peer, { vdom = vdom, ip = ip }) ]
    ]
  ])
  route_maps    = flatten([
    for vdom in var.vdoms : [
      for map in local.route_maps_yaml[vdom] : [ merge(map, { vdom = vdom }) ]
    ]
  ])

  prefix_lists_v4     = flatten([
    for vdom in keys(local.prefix_lists_yaml) : [
      for prefixlist in local.prefix_lists_yaml[vdom] : [ merge(prefixlist, { vdom = vdom })] if try(prefixlist.address_family, "") == "ipv4"
    ]
  ])

  prefix_lists_v6     = flatten([
    for vdom in keys(local.prefix_lists_yaml) : [
      for prefixlist in local.prefix_lists_yaml[vdom] : [ merge(prefixlist, { vdom = vdom })] if try(prefixlist.address_family, "") == "ipv6"
    ]
  ])

  aggregate_address_v4     = flatten([
    for vdom in keys(local.aggregate_address_yaml) : [
      for aggregate in local.aggregate_address_yaml[vdom] : [ merge(aggregate, { vdom = vdom })] if try(aggregate.address_family, "") == "ipv4"
    ]
  ])

  aggregate_address_v6     = flatten([
    for vdom in keys(local.aggregate_address_yaml) : [
      for aggregate in local.aggregate_address_yaml[vdom] : [ merge(aggregate, { vdom = vdom })] if try(aggregate.address_family, "") == "ipv6"
    ]
  ])

  redistribute = ["connected", "rip", "ospf", "static", "isis"]
}

resource fortios_router_bgp router_bgp {
  for_each      = local.vdom_bgp_yaml
  as_string     = each.value.asn
  router_id     = each.value.router_id
  vdomparam     = each.key

  dynamic aggregate_address {
    for_each = { for aggregate_address in local.aggregate_address_v4 : aggregate_address.id => aggregate_address }
    content {
      id            = aggregate_address.value.id
      prefix        = aggregate_address.value.prefix
      as_set        = try(aggregate_address.value.as_set, null)
      summary_only  = try(aggregate_address.value.summary_only, null)
    }
  }

  dynamic aggregate_address6 {
    for_each = { for aggregate_address in local.aggregate_address_v6 : aggregate_address.id => aggregate_address }
    content {
      id            = aggregate_address.value.id
      prefix6       = aggregate_address.value.prefix
      as_set        = try(aggregate_address.value.as_set, null)
      summary_only  = try(aggregate_address.value.summary_only, null)
    }
  }

  dynamic redistribute {
    for_each = { for type in local.redistribute : type => type }
    content {
      name      = redistribute.key
      status    = try(each.value.redistribute[redistribute.key].status, "disable")
      route_map = try(each.value.redistribute[redistribute.key].route_map, null)
    }
  }

  dynamic redistribute6 {
    for_each = { for type in local.redistribute : type => type }
    content {
      name      = redistribute6.key
      status    = try(each.value.redistribute6[redistribute6.key].status, "disable")
      route_map = try(each.value.redistribute6[redistribute6.key].route_map, null)
    }
  }
}

resource fortios_router_prefixlist6 prefixlist_v6 {
  for_each                      = { for prefix_list in local.prefix_lists_v6 : prefix_list.name => prefix_list}
  name                          = each.key
  dynamic rule {
    for_each = { for rule in each.value.rules : rule.id => rule }
    content {
      id      = rule.value.id
      action  = rule.value.action
      prefix6 = try(rule.value.prefix, null)
      ge      = try(rule.value.ge, null)
      le      = try(rule.value.le, null)
      flags   = try(rule.value.flags, null)
    }
  }
  vdomparam                     = each.value.vdom
}

resource fortios_router_prefixlist prefixlist_v4 {
  for_each                      = { for prefix_list in local.prefix_lists_v4 : prefix_list.name => prefix_list}
  name                          = each.key
  dynamic rule {
    for_each = { for rule in each.value.rules : rule.id => rule }
    content {
      id      = rule.value.id
      action  = rule.value.action
      prefix  = try(rule.value.prefix, null)
      ge      = try(rule.value.ge, null)
      le      = try(rule.value.le, null)
      flags   = try(rule.value.flags, null)
    }
  }
  vdomparam                     = each.value.vdom
}

resource fortios_router_routemap routemaps {
  depends_on  = [
    fortios_router_prefixlist.prefixlist_v4,
    fortios_router_prefixlist6.prefixlist_v6,
  ]
  for_each                      = { for route_map in local.route_maps : route_map.name => route_map}
  name                          = each.key
  dynamic rule {
    for_each = { for rule in each.value.rules : rule.id => rule }
    content {
      id                  = rule.value.id
      action              = rule.value.action
      match_ip_address    = try(rule.value.match_ip_address, null)
      match_ip6_address   = try(rule.value.match_ip6_address, null)
      match_flags         = try(rule.value.match_flags, null)
      set_flags           = try(rule.value.set_flags, null)
    }
  }
  vdomparam                     = each.value.vdom
}

resource fortios_routerbgp_neighbor peer {
  for_each                      = { for peer in local.bgp_peers : peer.ip => peer}
  depends_on                    = [ fortios_router_routemap.routemaps ]
  ip                            = each.value.ip
  remote_as                     = each.value.remote_as
  update_source                 = try(each.value.update_source, null)
  vdomparam                     = each.value.vdom
  activate                      = try(each.value.activate, "disable")
  activate6                     = try(each.value.activate6, "disable")
  capability_default_originate  = try(each.value.capability_default_originate, "disable")
  capability_default_originate6 = try(each.value.capability_default_originate6, "disable")
  prefix_list_out               = try(each.value.prefix_list_out, null)
  prefix_list_out6              = try(each.value.prefix_list_out6, null)
  route_map_out                 = try(each.value.route_map_out, null)
  route_map_out6                = try(each.value.route_map_out6, null)
}
