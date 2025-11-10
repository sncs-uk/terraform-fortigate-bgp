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
      id                                        = rule.value.id
      action                                    = try(rule.value.action, null)
      match_community                           = try(rule.value.match_community, null)
      match_extcommunity                        = try(rule.value.match_extcommunity, null)
      match_community_exact                     = try(rule.value.match_community_exact, null)
      match_extcommunity_exact                  = try(rule.value.match_extcommunity_exact, null)
      match_origin                              = try(rule.value.match_origin, null)
      match_interface                           = try(rule.value.match_interface, null)
      match_ip_address                          = try(rule.value.match_ip_address, null)
      match_ip6_address                         = try(rule.value.match_ip6_address, null)
      match_ip_nexthop                          = try(rule.value.match_ip_nexthop, null)
      match_ip6_nexthop                         = try(rule.value.match_ip6_nexthop, null)
      match_metric                              = try(rule.value.match_metric, null)
      match_route_type                          = try(rule.value.match_route_type, null)
      match_tag                                 = try(rule.value.match_tag, null)
      match_vrf                                 = try(rule.value.match_vrf, null)
      set_aggregator_as                         = try(rule.value.set_aggregator_as, null)
      set_aggregator_ip                         = try(rule.value.set_aggregator_ip, null)
      set_aspath_action                         = try(rule.value.set_aspath_action, null)

      dynamic set_aspath {
        for_each          = { for as in try(rule.value.set_aspath, []) == [] ? [] : [rule.value.set_aspath] : as => as }
        content {
          as              = set_aspath.value
        }
      }

      set_atomic_aggregate                      = try(rule.value.set_atomic_aggregate, null)
      set_community_delete                      = try(rule.value.set_community_delete, null)

      dynamic set_community {
        for_each          = { for community in try(rule.value.set_community, []) == [] ? [] : [rule.value.set_community] : community => community }
        content {
          community              = set_community.value
        }
      }

      set_community_additive                    = try(rule.value.set_community_additive, null)
      set_dampening_reachability_half_life      = try(rule.value.set_dampening_reachability_half_life, null)
      set_dampening_reuse                       = try(rule.value.set_dampening_reuse, null)
      set_dampening_suppress                    = try(rule.value.set_dampening_suppress, null)
      set_dampening_max_suppress                = try(rule.value.set_dampening_max_suppress, null)
      set_dampening_unreachability_half_life    = try(rule.value.set_dampening_unreachability_half_life, null)
      set_ip_nexthop                            = try(rule.value.set_ip_nexthop, null)

      dynamic set_extcommunity_rt {
        for_each          = { for community in try(rule.value.set_extcommunity_rt, []) == [] ? [] : [rule.value.set_extcommunity_rt] : community => community }
        content {
          community              = set_extcommunity_rt.value
        }
      }

      dynamic set_extcommunity_soo {
        for_each          = { for community in try(rule.value.set_extcommunity_soo, []) == [] ? [] : [rule.value.set_extcommunity_soo] : community => community }
        content {
          community              = set_extcommunity_soo.value
        }
      }

      set_ip_prefsrc                            = try(rule.value.set_ip_prefsrc, null)
      set_vpnv4_nexthop                         = try(rule.value.set_vpnv4_nexthop, null)
      set_ip6_nexthop                           = try(rule.value.set_ip6_nexthop, null)
      set_ip6_nexthop_local                     = try(rule.value.set_ip6_nexthop_local, null)
      set_vpnv6_nexthop                         = try(rule.value.set_vpnv6_nexthop, null)
      set_vpnv6_nexthop_local                   = try(rule.value.set_vpnv6_nexthop_local, null)
      set_local_preference                      = try(rule.value.set_local_preference, null)
      set_metric                                = try(rule.value.set_metric, null)
      set_metric_type                           = try(rule.value.set_metric_type, null)
      set_originator_id                         = try(rule.value.set_originator_id, null)
      set_origin                                = try(rule.value.set_origin, null)
      set_tag                                   = try(rule.value.set_tag, null)
      set_weight                                = try(rule.value.set_weight, null)
      set_flags                                 = try(rule.value.set_flags, null)
      match_flags                               = try(rule.value.match_flags, null)
      set_route_tag                             = try(rule.value.set_route_tag, null)
      set_priority                              = try(rule.value.set_priority, null)
    }
  }
  vdomparam                     = each.value.vdom
}

resource fortios_routerbgp_neighbor peer {
  for_each                                  = { for peer in local.bgp_peers : peer.ip => peer}
  depends_on                                = [ fortios_router_routemap.routemaps ]
  ip                                        = try(each.value.ip, null)
  advertisement_interval                    = try(each.value.advertisement_interval, null)
  allowas_in_enable                         = try(each.value.allowas_in_enable, null)
  allowas_in_enable6                        = try(each.value.allowas_in_enable6, null)
  allowas_in_enable_vpnv4                   = try(each.value.allowas_in_enable_vpnv4, null)
  allowas_in_enable_vpnv6                   = try(each.value.allowas_in_enable_vpnv6, null)
  allowas_in_enable_evpn                    = try(each.value.allowas_in_enable_evpn, null)
  allowas_in                                = try(each.value.allowas_in, null)
  allowas_in6                               = try(each.value.allowas_in6, null)
  allowas_in_vpnv4                          = try(each.value.allowas_in_vpnv4, null)
  allowas_in_vpnv6                          = try(each.value.allowas_in_vpnv6, null)
  allowas_in_evpn                           = try(each.value.allowas_in_evpn, null)
  attribute_unchanged                       = try(each.value.attribute_unchanged, null)
  attribute_unchanged6                      = try(each.value.attribute_unchanged6, null)
  attribute_unchanged_vpnv4                 = try(each.value.attribute_unchanged_vpnv4, null)
  attribute_unchanged_vpnv6                 = try(each.value.attribute_unchanged_vpnv6, null)
  activate                                  = try(each.value.activate, null)
  activate6                                 = try(each.value.activate6, null)
  activate_vpnv4                            = try(each.value.activate_vpnv4, null)
  activate_vpnv6                            = try(each.value.activate_vpnv6, null)
  activate_evpn                             = try(each.value.activate_evpn, null)
  bfd                                       = try(each.value.bfd, null)
  capability_dynamic                        = try(each.value.capability_dynamic, null)
  capability_orf                            = try(each.value.capability_orf, null)
  capability_orf6                           = try(each.value.capability_orf6, null)
  capability_graceful_restart               = try(each.value.capability_graceful_restart, null)
  capability_graceful_restart6              = try(each.value.capability_graceful_restart6, null)
  capability_graceful_restart_vpnv4         = try(each.value.capability_graceful_restart_vpnv4, null)
  capability_graceful_restart_vpnv6         = try(each.value.capability_graceful_restart_vpnv6, null)
  capability_graceful_restart_evpn          = try(each.value.capability_graceful_restart_evpn, null)
  capability_route_refresh                  = try(each.value.capability_route_refresh, null)
  capability_default_originate              = try(each.value.capability_default_originate, null)
  capability_default_originate6             = try(each.value.capability_default_originate6, null)
  dont_capability_negotiate                 = try(each.value.dont_capability_negotiate, null)
  ebgp_enforce_multihop                     = try(each.value.ebgp_enforce_multihop, null)
  link_down_failover                        = try(each.value.link_down_failover, null)
  stale_route                               = try(each.value.stale_route, null)
  next_hop_self                             = try(each.value.next_hop_self, null)
  next_hop_self6                            = try(each.value.next_hop_self6, null)
  next_hop_self_rr                          = try(each.value.next_hop_self_rr, null)
  next_hop_self_rr6                         = try(each.value.next_hop_self_rr6, null)
  next_hop_self_vpnv4                       = try(each.value.next_hop_self_vpnv4, null)
  next_hop_self_vpnv6                       = try(each.value.next_hop_self_vpnv6, null)
  override_capability                       = try(each.value.override_capability, null)
  passive                                   = try(each.value.passive, null)
  remove_private_as                         = try(each.value.remove_private_as, null)
  remove_private_as6                        = try(each.value.remove_private_as6, null)
  remove_private_as_vpnv4                   = try(each.value.remove_private_as_vpnv4, null)
  remove_private_as_vpnv6                   = try(each.value.remove_private_as_vpnv6, null)
  remove_private_as_evpn                    = try(each.value.remove_private_as_evpn, null)
  route_reflector_client                    = try(each.value.route_reflector_client, null)
  route_reflector_client6                   = try(each.value.route_reflector_client6, null)
  route_reflector_client_vpnv4              = try(each.value.route_reflector_client_vpnv4, null)
  route_reflector_client_vpnv6              = try(each.value.route_reflector_client_vpnv6, null)
  route_reflector_client_evpn               = try(each.value.route_reflector_client_evpn, null)
  route_server_client                       = try(each.value.route_server_client, null)
  route_server_client6                      = try(each.value.route_server_client6, null)
  route_server_client_vpnv4                 = try(each.value.route_server_client_vpnv4, null)
  route_server_client_vpnv6                 = try(each.value.route_server_client_vpnv6, null)
  route_server_client_evpn                  = try(each.value.route_server_client_evpn, null)
  rr_attr_allow_change                      = try(each.value.rr_attr_allow_change, null)
  rr_attr_allow_change6                     = try(each.value.rr_attr_allow_change6, null)
  rr_attr_allow_change_vpnv4                = try(each.value.rr_attr_allow_change_vpnv4, null)
  rr_attr_allow_change_vpnv6                = try(each.value.rr_attr_allow_change_vpnv6, null)
  rr_attr_allow_change_evpn                 = try(each.value.rr_attr_allow_change_evpn, null)
  shutdown                                  = try(each.value.shutdown, null)
  soft_reconfiguration                      = try(each.value.soft_reconfiguration, null)
  soft_reconfiguration6                     = try(each.value.soft_reconfiguration6, null)
  soft_reconfiguration_vpnv4                = try(each.value.soft_reconfiguration_vpnv4, null)
  soft_reconfiguration_vpnv6                = try(each.value.soft_reconfiguration_vpnv6, null)
  soft_reconfiguration_evpn                 = try(each.value.soft_reconfiguration_evpn, null)
  as_override                               = try(each.value.as_override, null)
  as_override6                              = try(each.value.as_override6, null)
  strict_capability_match                   = try(each.value.strict_capability_match, null)
  default_originate_routemap                = try(each.value.default_originate_routemap, null)
  default_originate_routemap6               = try(each.value.default_originate_routemap6, null)
  description                               = try(each.value.description, null)
  distribute_list_in                        = try(each.value.distribute_list_in, null)
  distribute_list_in6                       = try(each.value.distribute_list_in6, null)
  distribute_list_in_vpnv4                  = try(each.value.distribute_list_in_vpnv4, null)
  distribute_list_in_vpnv6                  = try(each.value.distribute_list_in_vpnv6, null)
  distribute_list_out                       = try(each.value.distribute_list_out, null)
  distribute_list_out6                      = try(each.value.distribute_list_out6, null)
  distribute_list_out_vpnv4                 = try(each.value.distribute_list_out_vpnv4, null)
  distribute_list_out_vpnv6                 = try(each.value.distribute_list_out_vpnv6, null)
  ebgp_multihop_ttl                         = try(each.value.ebgp_multihop_ttl, null)
  filter_list_in                            = try(each.value.filter_list_in, null)
  filter_list_in6                           = try(each.value.filter_list_in6, null)
  filter_list_in_vpnv4                      = try(each.value.filter_list_in_vpnv4, null)
  filter_list_in_vpnv6                      = try(each.value.filter_list_in_vpnv6, null)
  filter_list_out                           = try(each.value.filter_list_out, null)
  filter_list_out6                          = try(each.value.filter_list_out6, null)
  filter_list_out_vpnv4                     = try(each.value.filter_list_out_vpnv4, null)
  filter_list_out_vpnv6                     = try(each.value.filter_list_out_vpnv6, null)
  interface                                 = try(each.value.interface, null)
  maximum_prefix                            = try(each.value.maximum_prefix, null)
  maximum_prefix6                           = try(each.value.maximum_prefix6, null)
  maximum_prefix_vpnv4                      = try(each.value.maximum_prefix_vpnv4, null)
  maximum_prefix_vpnv6                      = try(each.value.maximum_prefix_vpnv6, null)
  maximum_prefix_evpn                       = try(each.value.maximum_prefix_evpn, null)
  maximum_prefix_threshold                  = try(each.value.maximum_prefix_threshold, null)
  maximum_prefix_threshold6                 = try(each.value.maximum_prefix_threshold6, null)
  maximum_prefix_threshold_vpnv4            = try(each.value.maximum_prefix_threshold_vpnv4, null)
  maximum_prefix_threshold_vpnv6            = try(each.value.maximum_prefix_threshold_vpnv6, null)
  maximum_prefix_threshold_evpn             = try(each.value.maximum_prefix_threshold_evpn, null)
  maximum_prefix_warning_only               = try(each.value.maximum_prefix_warning_only, null)
  maximum_prefix_warning_only6              = try(each.value.maximum_prefix_warning_only6, null)
  maximum_prefix_warning_only_vpnv4         = try(each.value.maximum_prefix_warning_only_vpnv4, null)
  maximum_prefix_warning_only_vpnv6         = try(each.value.maximum_prefix_warning_only_vpnv6, null)
  maximum_prefix_warning_only_evpn          = try(each.value.maximum_prefix_warning_only_evpn, null)
  prefix_list_in                            = try(each.value.prefix_list_in, null)
  prefix_list_in6                           = try(each.value.prefix_list_in6, null)
  prefix_list_in_vpnv4                      = try(each.value.prefix_list_in_vpnv4, null)
  prefix_list_in_vpnv6                      = try(each.value.prefix_list_in_vpnv6, null)
  prefix_list_out                           = try(each.value.prefix_list_out, null)
  prefix_list_out6                          = try(each.value.prefix_list_out6, null)
  prefix_list_out_vpnv4                     = try(each.value.prefix_list_out_vpnv4, null)
  prefix_list_out_vpnv6                     = try(each.value.prefix_list_out_vpnv6, null)
  remote_as                                 = try(each.value.remote_as, null)
  local_as                                  = try(each.value.local_as, null)
  local_as_no_prepend                       = try(each.value.local_as_no_prepend, null)
  local_as_replace_as                       = try(each.value.local_as_replace_as, null)
  retain_stale_time                         = try(each.value.retain_stale_time, null)
  route_map_in                              = try(each.value.route_map_in, null)
  route_map_in6                             = try(each.value.route_map_in6, null)
  route_map_in_vpnv4                        = try(each.value.route_map_in_vpnv4, null)
  route_map_in_vpnv6                        = try(each.value.route_map_in_vpnv6, null)
  route_map_in_evpn                         = try(each.value.route_map_in_evpn, null)
  route_map_out                             = try(each.value.route_map_out, null)
  route_map_out_preferable                  = try(each.value.route_map_out_preferable, null)
  route_map_out6                            = try(each.value.route_map_out6, null)
  route_map_out6_preferable                 = try(each.value.route_map_out6_preferable, null)
  route_map_out_vpnv4                       = try(each.value.route_map_out_vpnv4, null)
  route_map_out_vpnv6                       = try(each.value.route_map_out_vpnv6, null)
  route_map_out_vpnv4_preferable            = try(each.value.route_map_out_vpnv4_preferable, null)
  route_map_out_vpnv6_preferable            = try(each.value.route_map_out_vpnv6_preferable, null)
  route_map_out_evpn                        = try(each.value.route_map_out_evpn, null)
  send_community                            = try(each.value.send_community, null)
  send_community6                           = try(each.value.send_community6, null)
  send_community_vpnv4                      = try(each.value.send_community_vpnv4, null)
  send_community_vpnv6                      = try(each.value.send_community_vpnv6, null)
  send_community_evpn                       = try(each.value.send_community_evpn, null)
  keep_alive_timer                          = try(each.value.keep_alive_timer, null)
  holdtime_timer                            = try(each.value.holdtime_timer, null)
  connect_timer                             = try(each.value.connect_timer, null)
  unsuppress_map                            = try(each.value.unsuppress_map, null)
  unsuppress_map6                           = try(each.value.unsuppress_map6, null)
  update_source                             = try(each.value.update_source, null)
  weight                                    = try(each.value.weight, null)
  restart_time                              = try(each.value.restart_time, null)
  additional_path                           = try(each.value.additional_path, null)
  additional_path6                          = try(each.value.additional_path6, null)
  additional_path_vpnv4                     = try(each.value.additional_path_vpnv4, null)
  additional_path_vpnv6                     = try(each.value.additional_path_vpnv6, null)
  adv_additional_path                       = try(each.value.adv_additional_path, null)
  adv_additional_path6                      = try(each.value.adv_additional_path6, null)
  adv_additional_path_vpnv4                 = try(each.value.adv_additional_path_vpnv4, null)
  adv_additional_path_vpnv6                 = try(each.value.adv_additional_path_vpnv6, null)
  password                                  = try(each.value.password, null)
  auth_options                              = try(each.value.auth_options, null)
  dynamic_sort_subtable                     = try(each.value.dynamic_sort_subtable, null)
  get_all_tables                            = try(each.value.get_all_tables, null)
  vdomparam                                 = try(each.value.vdomparam, null)
}
