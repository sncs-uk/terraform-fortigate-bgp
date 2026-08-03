/**
 * # Fortigate BGP configuration module
 *
 * This terraform module configures BGP on a firewall
 */
terraform {
  required_version = ">= 1.11.0"
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
      version = ">= 1.22.0"
    }
  }
}

resource "fortios_router_bgp" "router_bgp" {
  for_each                            = { for o in var.routerbgp : o.as => o }
  as_string                           = each.value.as_string
  as                                  = each.value.as
  router_id                           = each.value.router_id
  keepalive_timer                     = each.value.keepalive_timer
  holdtime_timer                      = each.value.holdtime_timer
  always_compare_med                  = each.value.always_compare_med
  bestpath_as_path_ignore             = each.value.bestpath_as_path_ignore
  bestpath_cmp_confed_aspath          = each.value.bestpath_cmp_confed_aspath
  bestpath_cmp_routerid               = each.value.bestpath_cmp_routerid
  bestpath_med_confed                 = each.value.bestpath_med_confed
  bestpath_med_missing_as_worst       = each.value.bestpath_med_missing_as_worst
  client_to_client_reflection         = each.value.client_to_client_reflection
  dampening                           = each.value.dampening
  dampening6                          = each.value.dampening6
  deterministic_med                   = each.value.deterministic_med
  ebgp_multipath                      = each.value.ebgp_multipath
  ibgp_multipath                      = each.value.ibgp_multipath
  enforce_first_as                    = each.value.enforce_first_as
  fast_external_failover              = each.value.fast_external_failover
  log_neighbour_changes               = each.value.log_neighbour_changes
  network_import_check                = each.value.network_import_check
  ignore_optional_capability          = each.value.ignore_optional_capability
  additional_path                     = each.value.additional_path
  additional_path6                    = each.value.additional_path6
  additional_path_vpnv4               = each.value.additional_path_vpnv4
  additional_path_vpnv6               = each.value.additional_path_vpnv6
  multipath_recursive_distance        = each.value.multipath_recursive_distance
  recursive_next_hop                  = each.value.recursive_next_hop
  recursive_inherit_priority          = each.value.recursive_inherit_priority
  tag_resolve_mode                    = each.value.tag_resolve_mode
  cluster_id                          = each.value.cluster_id
  confederation_identifier            = each.value.confederation_identifier
  dampening_route_map                 = each.value.dampening_route_map
  dampening_reachability_half_life    = each.value.dampening_reachability_half_life
  dampening_reuse                     = each.value.dampening_reuse
  dampening_suppress                  = each.value.dampening_suppress
  dampening_max_suppress_time         = each.value.dampening_max_suppress_time
  dampening_unreachability_half_life  = each.value.dampening_unreachability_half_life
  dampening6_route_map                = each.value.dampening6_route_map
  dampening6_reachability_half_life   = each.value.dampening6_reachability_half_life
  dampening6_reuse                    = each.value.dampening6_reuse
  dampening6_suppress                 = each.value.dampening6_suppress
  dampening6_max_suppress_time        = each.value.dampening6_max_suppress_time
  dampening6_unreachability_half_life = each.value.dampening6_unreachability_half_life
  default_local_preference            = each.value.default_local_preference
  scan_time                           = each.value.scan_time
  distance_external                   = each.value.distance_external
  distance_internal                   = each.value.distance_internal
  distance_local                      = each.value.distance_local
  synchronization                     = each.value.synchronization
  graceful_restart                    = each.value.graceful_restart
  graceful_restart_time               = each.value.graceful_restart_time
  graceful_stalepath_time             = each.value.graceful_stalepath_time
  graceful_update_delay               = each.value.graceful_update_delay
  graceful_end_on_timer               = each.value.graceful_end_on_timer
  additional_path_select              = each.value.additional_path_select
  additional_path_select6             = each.value.additional_path_select6
  additional_path_select_vpnv4        = each.value.additional_path_select_vpnv4
  additional_path_select_vpnv6        = each.value.additional_path_select_vpnv6
  cross_family_conditional_adv        = each.value.cross_family_conditional_adv
  dynamic_sort_subtable               = each.value.dynamic_sort_subtable
  get_all_tables                      = each.value.get_all_tables
  vdomparam                           = each.value.vdomparam

  dynamic "aggregate_address" {
    for_each = [for o in each.value.aggregate_address : o]
    content {
      id           = aggregate_address.value.id
      prefix       = aggregate_address.value.prefix
      as_set       = aggregate_address.value.as_set
      summary_only = aggregate_address.value.summary_only
    }
  }

  dynamic "aggregate_address6" {
    for_each = [for o in each.value.aggregate_address6 : o]
    content {
      id           = aggregate_address.value.id
      prefix6      = aggregate_address.value.prefix6
      as_set       = aggregate_address.value.as_set
      summary_only = aggregate_address.value.summary_only
    }
  }

  dynamic "neighbor" {
    for_each = [for o in each.value.neighbor : o]
    content {
      ip                                 = neighbor.value.ip
      name                               = neighbor.value.name
      advertisement_interval             = neighbor.value.advertisement_interval
      allowas_in_enable                  = neighbor.value.allowas_in_enable
      allowas_in_enable6                 = neighbor.value.allowas_in_enable6
      allowas_in_enable_vpnv4            = neighbor.value.allowas_in_enable_vpnv4
      allowas_in_enable_vpnv6            = neighbor.value.allowas_in_enable_vpnv6
      allowas_in_enable_evpn             = neighbor.value.allowas_in_enable_evpn
      allowas_in                         = neighbor.value.allowas_in
      allowas_in6                        = neighbor.value.allowas_in6
      allowas_in_vpnv4                   = neighbor.value.allowas_in_vpnv4
      allowas_in_vpnv6                   = neighbor.value.allowas_in_vpnv6
      allowas_in_evpn                    = neighbor.value.allowas_in_evpn
      attribute_unchanged                = neighbor.value.attribute_unchanged
      attribute_unchanged6               = neighbor.value.attribute_unchanged6
      attribute_unchanged_vpnv4          = neighbor.value.attribute_unchanged_vpnv4
      attribute_unchanged_vpnv6          = neighbor.value.attribute_unchanged_vpnv6
      activate                           = neighbor.value.activate
      activate6                          = neighbor.value.activate6
      activate_vpnv4                     = neighbor.value.activate_vpnv4
      activate_vpnv6                     = neighbor.value.activate_vpnv6
      activate_evpn                      = neighbor.value.activate_evpn
      bfd                                = neighbor.value.bfd
      capability_dynamic                 = neighbor.value.capability_dynamic
      capability_orf                     = neighbor.value.capability_orf
      capability_orf6                    = neighbor.value.capability_orf6
      capability_graceful_restart        = neighbor.value.capability_graceful_restart
      capability_graceful_restart6       = neighbor.value.capability_graceful_restart6
      capability_graceful_restart_vpnv4  = neighbor.value.capability_graceful_restart_vpnv4
      capability_graceful_restart_vpnv6  = neighbor.value.capability_graceful_restart_vpnv6
      capability_graceful_restart_evpn   = neighbor.value.capability_graceful_restart_evpn
      capability_route_refresh           = neighbor.value.capability_route_refresh
      capability_default_originate       = neighbor.value.capability_default_originate
      capability_default_originate6      = neighbor.value.capability_default_originate6
      dont_capability_negotiate          = neighbor.value.dont_capability_negotiate
      ebgp_enforce_multihop              = neighbor.value.ebgp_enforce_multihop
      link_down_failover                 = neighbor.value.link_down_failover
      stale_route                        = neighbor.value.stale_route
      next_hop_self                      = neighbor.value.next_hop_self
      next_hop_self6                     = neighbor.value.next_hop_self6
      next_hop_self_rr                   = neighbor.value.next_hop_self_rr
      next_hop_self_rr6                  = neighbor.value.next_hop_self_rr6
      next_hop_self_vpnv4                = neighbor.value.next_hop_self_vpnv4
      next_hop_self_vpnv6                = neighbor.value.next_hop_self_vpnv6
      next_hop_self_rr_vpnv4             = neighbor.value.next_hop_self_rr_vpnv4
      next_hop_self_rr_vpnv6             = neighbor.value.next_hop_self_rr_vpnv6
      override_capability                = neighbor.value.override_capability
      passive                            = neighbor.value.passive
      remove_private_as                  = neighbor.value.remove_private_as
      remove_private_as6                 = neighbor.value.remove_private_as6
      remove_private_as_vpnv4            = neighbor.value.remove_private_as_vpnv4
      remove_private_as_vpnv6            = neighbor.value.remove_private_as_vpnv6
      remove_private_as_evpn             = neighbor.value.remove_private_as_evpn
      route_reflector_client             = neighbor.value.route_reflector_client
      route_reflector_client6            = neighbor.value.route_reflector_client6
      route_reflector_client_vpnv4       = neighbor.value.route_reflector_client_vpnv4
      route_reflector_client_vpnv6       = neighbor.value.route_reflector_client_vpnv6
      route_reflector_client_evpn        = neighbor.value.route_reflector_client_evpn
      route_server_client                = neighbor.value.route_server_client
      route_server_client6               = neighbor.value.route_server_client6
      route_server_client_vpnv4          = neighbor.value.route_server_client_vpnv4
      route_server_client_vpnv6          = neighbor.value.route_server_client_vpnv6
      route_server_client_evpn           = neighbor.value.route_server_client_evpn
      rr_attr_allow_change               = neighbor.value.rr_attr_allow_change
      rr_attr_allow_change6              = neighbor.value.rr_attr_allow_change6
      rr_attr_allow_change_vpnv4         = neighbor.value.rr_attr_allow_change_vpnv4
      rr_attr_allow_change_vpnv6         = neighbor.value.rr_attr_allow_change_vpnv6
      rr_attr_allow_change_evpn          = neighbor.value.rr_attr_allow_change_evpn
      adv_evpn_route                     = neighbor.value.adv_evpn_route
      shutdown                           = neighbor.value.shutdown
      soft_reconfiguration               = neighbor.value.soft_reconfiguration
      soft_reconfiguration6              = neighbor.value.soft_reconfiguration6
      soft_reconfiguration_vpnv4         = neighbor.value.soft_reconfiguration_vpnv4
      soft_reconfiguration_vpnv6         = neighbor.value.soft_reconfiguration_vpnv6
      soft_reconfiguration_evpn          = neighbor.value.soft_reconfiguration_evpn
      as_override                        = neighbor.value.as_override
      as_override6                       = neighbor.value.as_override6
      strict_capability_match            = neighbor.value.strict_capability_match
      default_originate_routemap         = neighbor.value.default_originate_routemap
      default_originate_routemap6        = neighbor.value.default_originate_routemap6
      description                        = neighbor.value.description
      distribute_list_in                 = neighbor.value.distribute_list_in
      distribute_list_in6                = neighbor.value.distribute_list_in6
      distribute_list_in_vpnv4           = neighbor.value.distribute_list_in_vpnv4
      distribute_list_in_vpnv6           = neighbor.value.distribute_list_in_vpnv6
      distribute_list_out                = neighbor.value.distribute_list_out
      distribute_list_out6               = neighbor.value.distribute_list_out6
      distribute_list_out_vpnv4          = neighbor.value.distribute_list_out_vpnv4
      distribute_list_out_vpnv6          = neighbor.value.distribute_list_out_vpnv6
      ebgp_multihop_ttl                  = neighbor.value.ebgp_multihop_ttl
      filter_list_in                     = neighbor.value.filter_list_in
      filter_list_in6                    = neighbor.value.filter_list_in6
      filter_list_in_vpnv4               = neighbor.value.filter_list_in_vpnv4
      filter_list_in_vpnv6               = neighbor.value.filter_list_in_vpnv6
      filter_list_out                    = neighbor.value.filter_list_out
      filter_list_out6                   = neighbor.value.filter_list_out6
      filter_list_out_vpnv4              = neighbor.value.filter_list_out_vpnv4
      filter_list_out_vpnv6              = neighbor.value.filter_list_out_vpnv6
      interface                          = neighbor.value.interface
      maximum_prefix                     = neighbor.value.maximum_prefix
      maximum_prefix6                    = neighbor.value.maximum_prefix6
      maximum_prefix_vpnv4               = neighbor.value.maximum_prefix_vpnv4
      maximum_prefix_vpnv6               = neighbor.value.maximum_prefix_vpnv6
      maximum_prefix_evpn                = neighbor.value.maximum_prefix_evpn
      maximum_prefix_threshold           = neighbor.value.maximum_prefix_threshold
      maximum_prefix_threshold6          = neighbor.value.maximum_prefix_threshold6
      maximum_prefix_threshold_vpnv4     = neighbor.value.maximum_prefix_threshold_vpnv4
      maximum_prefix_threshold_vpnv6     = neighbor.value.maximum_prefix_threshold_vpnv6
      maximum_prefix_threshold_evpn      = neighbor.value.maximum_prefix_threshold_evpn
      maximum_prefix_warning_only        = neighbor.value.maximum_prefix_warning_only
      maximum_prefix_warning_only6       = neighbor.value.maximum_prefix_warning_only6
      maximum_prefix_warning_only_vpnv4  = neighbor.value.maximum_prefix_warning_only_vpnv4
      maximum_prefix_warning_only_vpnv6  = neighbor.value.maximum_prefix_warning_only_vpnv6
      maximum_prefix_warning_only_evpn   = neighbor.value.maximum_prefix_warning_only_evpn
      prefix_list_in                     = neighbor.value.prefix_list_in
      prefix_list_in6                    = neighbor.value.prefix_list_in6
      prefix_list_in_vpnv4               = neighbor.value.prefix_list_in_vpnv4
      prefix_list_in_vpnv6               = neighbor.value.prefix_list_in_vpnv6
      prefix_list_out                    = neighbor.value.prefix_list_out
      prefix_list_out6                   = neighbor.value.prefix_list_out6
      prefix_list_out_vpnv4              = neighbor.value.prefix_list_out_vpnv4
      prefix_list_out_vpnv6              = neighbor.value.prefix_list_out_vpnv6
      remote_as                          = neighbor.value.remote_as
      local_as                           = neighbor.value.local_as
      local_as_no_prepend                = neighbor.value.local_as_no_prepend
      local_as_replace_as                = neighbor.value.local_as_replace_as
      retain_stale_time                  = neighbor.value.retain_stale_time
      route_map_in                       = neighbor.value.route_map_in
      route_map_in6                      = neighbor.value.route_map_in6
      route_map_in_vpnv4                 = neighbor.value.route_map_in_vpnv4
      route_map_in_vpnv6                 = neighbor.value.route_map_in_vpnv6
      route_map_in_evpn                  = neighbor.value.route_map_in_evpn
      route_map_out                      = neighbor.value.route_map_out
      route_map_out_preferable           = neighbor.value.route_map_out_preferable
      route_map_out6                     = neighbor.value.route_map_out6
      route_map_out6_preferable          = neighbor.value.route_map_out6_preferable
      route_map_out_vpnv4                = neighbor.value.route_map_out_vpnv4
      route_map_out_vpnv6                = neighbor.value.route_map_out_vpnv6
      route_map_out_vpnv4_preferable     = neighbor.value.route_map_out_vpnv4_preferable
      route_map_out_vpnv6_preferable     = neighbor.value.route_map_out_vpnv6_preferable
      route_map_out_evpn                 = neighbor.value.route_map_out_evpn
      send_community                     = neighbor.value.send_community
      send_community6                    = neighbor.value.send_community6
      send_community_vpnv4               = neighbor.value.send_community_vpnv4
      send_community_vpnv6               = neighbor.value.send_community_vpnv6
      send_community_evpn                = neighbor.value.send_community_evpn
      keep_alive_timer                   = neighbor.value.keep_alive_timer
      holdtime_timer                     = neighbor.value.holdtime_timer
      connect_timer                      = neighbor.value.connect_timer
      unsuppress_map                     = neighbor.value.unsuppress_map
      unsuppress_map6                    = neighbor.value.unsuppress_map6
      update_source                      = neighbor.value.update_source
      enforce_preferred_source           = neighbor.value.enforce_preferred_source
      weight                             = neighbor.value.weight
      restart_time                       = neighbor.value.restart_time
      additional_path                    = neighbor.value.additional_path
      additional_path6                   = neighbor.value.additional_path6
      additional_path_vpnv4              = neighbor.value.additional_path_vpnv4
      additional_path_vpnv6              = neighbor.value.additional_path_vpnv6
      adv_additional_path                = neighbor.value.adv_additional_path
      adv_additional_path6               = neighbor.value.adv_additional_path6
      adv_additional_path_vpnv4          = neighbor.value.adv_additional_path_vpnv4
      adv_additional_path_vpnv6          = neighbor.value.adv_additional_path_vpnv6
      password                           = neighbor.value.password
      auth_options                       = neighbor.value.auth_options
      graceful_shutdown_community        = neighbor.value.graceful_shutdown_community
      graceful_shutdown_local_preference = neighbor.value.graceful_shutdown_local_preference
      graceful_shutdown_delay            = neighbor.value.graceful_shutdown_delay
      use_sdwan                          = neighbor.value.use_sdwan

      dynamic "conditional_advertise" {
        for_each = [for p in neighbor.value.conditional_advertise : p]
        content {
          advertise_routemap = conditional_advertise.value.advertise_routemap
          condition_routemap = conditional_advertise.value.condition_routemap
          condition_type     = conditional_advertise.value.condition_type
        }
      }
      dynamic "conditional_advertise6" {
        for_each = [for p in neighbor.value.conditional_advertise6 : p]
        content {
          advertise_routemap = conditional_advertise6.value.advertise_routemap
          condition_routemap = conditional_advertise6.value.condition_routemap
          condition_type     = conditional_advertise6.value.condition_type
        }
      }
    }
  }


  dynamic "neighbor_group" {
    for_each = [for o in each.value.neighbor_group : o]
    content {
      name                               = neighbor_group.value.name
      advertisement_interval             = neighbor_group.value.advertisement_interval
      allowas_in_enable                  = neighbor_group.value.allowas_in_enable
      allowas_in_enable6                 = neighbor_group.value.allowas_in_enable6
      allowas_in_enable_vpnv4            = neighbor_group.value.allowas_in_enable_vpnv4
      allowas_in_enable_vpnv6            = neighbor_group.value.allowas_in_enable_vpnv6
      allowas_in_enable_evpn             = neighbor_group.value.allowas_in_enable_evpn
      allowas_in                         = neighbor_group.value.allowas_in
      allowas_in6                        = neighbor_group.value.allowas_in6
      allowas_in_vpnv4                   = neighbor_group.value.allowas_in_vpnv4
      allowas_in_vpnv6                   = neighbor_group.value.allowas_in_vpnv6
      allowas_in_evpn                    = neighbor_group.value.allowas_in_evpn
      attribute_unchanged                = neighbor_group.value.attribute_unchanged
      attribute_unchanged6               = neighbor_group.value.attribute_unchanged6
      attribute_unchanged_vpnv4          = neighbor_group.value.attribute_unchanged_vpnv4
      attribute_unchanged_vpnv6          = neighbor_group.value.attribute_unchanged_vpnv6
      activate                           = neighbor_group.value.activate
      activate6                          = neighbor_group.value.activate6
      activate_vpnv4                     = neighbor_group.value.activate_vpnv4
      activate_vpnv6                     = neighbor_group.value.activate_vpnv6
      activate_evpn                      = neighbor_group.value.activate_evpn
      bfd                                = neighbor_group.value.bfd
      capability_dynamic                 = neighbor_group.value.capability_dynamic
      capability_orf                     = neighbor_group.value.capability_orf
      capability_orf6                    = neighbor_group.value.capability_orf6
      capability_graceful_restart        = neighbor_group.value.capability_graceful_restart
      capability_graceful_restart6       = neighbor_group.value.capability_graceful_restart6
      capability_graceful_restart_vpnv4  = neighbor_group.value.capability_graceful_restart_vpnv4
      capability_graceful_restart_vpnv6  = neighbor_group.value.capability_graceful_restart_vpnv6
      capability_graceful_restart_evpn   = neighbor_group.value.capability_graceful_restart_evpn
      capability_route_refresh           = neighbor_group.value.capability_route_refresh
      capability_default_originate       = neighbor_group.value.capability_default_originate
      capability_default_originate6      = neighbor_group.value.capability_default_originate6
      dont_capability_negotiate          = neighbor_group.value.dont_capability_negotiate
      ebgp_enforce_multihop              = neighbor_group.value.ebgp_enforce_multihop
      link_down_failover                 = neighbor_group.value.link_down_failover
      stale_route                        = neighbor_group.value.stale_route
      next_hop_self                      = neighbor_group.value.next_hop_self
      next_hop_self6                     = neighbor_group.value.next_hop_self6
      next_hop_self_rr                   = neighbor_group.value.next_hop_self_rr
      next_hop_self_rr6                  = neighbor_group.value.next_hop_self_rr6
      next_hop_self_vpnv4                = neighbor_group.value.next_hop_self_vpnv4
      next_hop_self_vpnv6                = neighbor_group.value.next_hop_self_vpnv6
      next_hop_self_rr_vpnv4             = neighbor_group.value.next_hop_self_rr_vpnv4
      next_hop_self_rr_vpnv6             = neighbor_group.value.next_hop_self_rr_vpnv6
      override_capability                = neighbor_group.value.override_capability
      passive                            = neighbor_group.value.passive
      remove_private_as                  = neighbor_group.value.remove_private_as
      remove_private_as6                 = neighbor_group.value.remove_private_as6
      remove_private_as_vpnv4            = neighbor_group.value.remove_private_as_vpnv4
      remove_private_as_vpnv6            = neighbor_group.value.remove_private_as_vpnv6
      remove_private_as_evpn             = neighbor_group.value.remove_private_as_evpn
      route_reflector_client             = neighbor_group.value.route_reflector_client
      route_reflector_client6            = neighbor_group.value.route_reflector_client6
      route_reflector_client_vpnv4       = neighbor_group.value.route_reflector_client_vpnv4
      route_reflector_client_vpnv6       = neighbor_group.value.route_reflector_client_vpnv6
      route_reflector_client_evpn        = neighbor_group.value.route_reflector_client_evpn
      route_server_client                = neighbor_group.value.route_server_client
      route_server_client6               = neighbor_group.value.route_server_client6
      route_server_client_vpnv4          = neighbor_group.value.route_server_client_vpnv4
      route_server_client_vpnv6          = neighbor_group.value.route_server_client_vpnv6
      route_server_client_evpn           = neighbor_group.value.route_server_client_evpn
      rr_attr_allow_change               = neighbor_group.value.rr_attr_allow_change
      rr_attr_allow_change6              = neighbor_group.value.rr_attr_allow_change6
      rr_attr_allow_change_vpnv4         = neighbor_group.value.rr_attr_allow_change_vpnv4
      rr_attr_allow_change_vpnv6         = neighbor_group.value.rr_attr_allow_change_vpnv6
      rr_attr_allow_change_evpn          = neighbor_group.value.rr_attr_allow_change_evpn
      adv_evpn_route                     = neighbor_group.value.adv_evpn_route
      shutdown                           = neighbor_group.value.shutdown
      soft_reconfiguration               = neighbor_group.value.soft_reconfiguration
      soft_reconfiguration6              = neighbor_group.value.soft_reconfiguration6
      soft_reconfiguration_vpnv4         = neighbor_group.value.soft_reconfiguration_vpnv4
      soft_reconfiguration_vpnv6         = neighbor_group.value.soft_reconfiguration_vpnv6
      soft_reconfiguration_evpn          = neighbor_group.value.soft_reconfiguration_evpn
      as_override                        = neighbor_group.value.as_override
      as_override6                       = neighbor_group.value.as_override6
      strict_capability_match            = neighbor_group.value.strict_capability_match
      default_originate_routemap         = neighbor_group.value.default_originate_routemap
      default_originate_routemap6        = neighbor_group.value.default_originate_routemap6
      description                        = neighbor_group.value.description
      distribute_list_in                 = neighbor_group.value.distribute_list_in
      distribute_list_in6                = neighbor_group.value.distribute_list_in6
      distribute_list_in_vpnv4           = neighbor_group.value.distribute_list_in_vpnv4
      distribute_list_in_vpnv6           = neighbor_group.value.distribute_list_in_vpnv6
      distribute_list_out                = neighbor_group.value.distribute_list_out
      distribute_list_out6               = neighbor_group.value.distribute_list_out6
      distribute_list_out_vpnv4          = neighbor_group.value.distribute_list_out_vpnv4
      distribute_list_out_vpnv6          = neighbor_group.value.distribute_list_out_vpnv6
      ebgp_multihop_ttl                  = neighbor_group.value.ebgp_multihop_ttl
      filter_list_in                     = neighbor_group.value.filter_list_in
      filter_list_in6                    = neighbor_group.value.filter_list_in6
      filter_list_in_vpnv4               = neighbor_group.value.filter_list_in_vpnv4
      filter_list_in_vpnv6               = neighbor_group.value.filter_list_in_vpnv6
      filter_list_out                    = neighbor_group.value.filter_list_out
      filter_list_out6                   = neighbor_group.value.filter_list_out6
      filter_list_out_vpnv4              = neighbor_group.value.filter_list_out_vpnv4
      filter_list_out_vpnv6              = neighbor_group.value.filter_list_out_vpnv6
      interface                          = neighbor_group.value.interface
      maximum_prefix                     = neighbor_group.value.maximum_prefix
      maximum_prefix6                    = neighbor_group.value.maximum_prefix6
      maximum_prefix_vpnv4               = neighbor_group.value.maximum_prefix_vpnv4
      maximum_prefix_vpnv6               = neighbor_group.value.maximum_prefix_vpnv6
      maximum_prefix_evpn                = neighbor_group.value.maximum_prefix_evpn
      maximum_prefix_threshold           = neighbor_group.value.maximum_prefix_threshold
      maximum_prefix_threshold6          = neighbor_group.value.maximum_prefix_threshold6
      maximum_prefix_threshold_vpnv4     = neighbor_group.value.maximum_prefix_threshold_vpnv4
      maximum_prefix_threshold_vpnv6     = neighbor_group.value.maximum_prefix_threshold_vpnv6
      maximum_prefix_threshold_evpn      = neighbor_group.value.maximum_prefix_threshold_evpn
      maximum_prefix_warning_only        = neighbor_group.value.maximum_prefix_warning_only
      maximum_prefix_warning_only6       = neighbor_group.value.maximum_prefix_warning_only6
      maximum_prefix_warning_only_vpnv4  = neighbor_group.value.maximum_prefix_warning_only_vpnv4
      maximum_prefix_warning_only_vpnv6  = neighbor_group.value.maximum_prefix_warning_only_vpnv6
      maximum_prefix_warning_only_evpn   = neighbor_group.value.maximum_prefix_warning_only_evpn
      prefix_list_in                     = neighbor_group.value.prefix_list_in
      prefix_list_in6                    = neighbor_group.value.prefix_list_in6
      prefix_list_in_vpnv4               = neighbor_group.value.prefix_list_in_vpnv4
      prefix_list_in_vpnv6               = neighbor_group.value.prefix_list_in_vpnv6
      prefix_list_out                    = neighbor_group.value.prefix_list_out
      prefix_list_out6                   = neighbor_group.value.prefix_list_out6
      prefix_list_out_vpnv4              = neighbor_group.value.prefix_list_out_vpnv4
      prefix_list_out_vpnv6              = neighbor_group.value.prefix_list_out_vpnv6
      remote_as                          = neighbor_group.value.remote_as
      remote_as_filter                   = neighbor_group.value.remote_as_filter
      local_as                           = neighbor_group.value.local_as
      local_as_no_prepend                = neighbor_group.value.local_as_no_prepend
      local_as_replace_as                = neighbor_group.value.local_as_replace_as
      retain_stale_time                  = neighbor_group.value.retain_stale_time
      route_map_in                       = neighbor_group.value.route_map_in
      route_map_in6                      = neighbor_group.value.route_map_in6
      route_map_in_vpnv4                 = neighbor_group.value.route_map_in_vpnv4
      route_map_in_vpnv6                 = neighbor_group.value.route_map_in_vpnv6
      route_map_in_evpn                  = neighbor_group.value.route_map_in_evpn
      route_map_out                      = neighbor_group.value.route_map_out
      route_map_out_preferable           = neighbor_group.value.route_map_out_preferable
      route_map_out6                     = neighbor_group.value.route_map_out6
      route_map_out6_preferable          = neighbor_group.value.route_map_out6_preferable
      route_map_out_vpnv4                = neighbor_group.value.route_map_out_vpnv4
      route_map_out_vpnv6                = neighbor_group.value.route_map_out_vpnv6
      route_map_out_vpnv4_preferable     = neighbor_group.value.route_map_out_vpnv4_preferable
      route_map_out_vpnv6_preferable     = neighbor_group.value.route_map_out_vpnv6_preferable
      route_map_out_evpn                 = neighbor_group.value.route_map_out_evpn
      send_community                     = neighbor_group.value.send_community
      send_community6                    = neighbor_group.value.send_community6
      send_community_vpnv4               = neighbor_group.value.send_community_vpnv4
      send_community_vpnv6               = neighbor_group.value.send_community_vpnv6
      send_community_evpn                = neighbor_group.value.send_community_evpn
      keep_alive_timer                   = neighbor_group.value.keep_alive_timer
      holdtime_timer                     = neighbor_group.value.holdtime_timer
      connect_timer                      = neighbor_group.value.connect_timer
      unsuppress_map                     = neighbor_group.value.unsuppress_map
      unsuppress_map6                    = neighbor_group.value.unsuppress_map6
      update_source                      = neighbor_group.value.update_source
      enforce_preferred_source           = neighbor_group.value.enforce_preferred_source
      weight                             = neighbor_group.value.weight
      restart_time                       = neighbor_group.value.restart_time
      additional_path                    = neighbor_group.value.additional_path
      additional_path6                   = neighbor_group.value.additional_path6
      additional_path_vpnv4              = neighbor_group.value.additional_path_vpnv4
      additional_path_vpnv6              = neighbor_group.value.additional_path_vpnv6
      adv_additional_path                = neighbor_group.value.adv_additional_path
      adv_additional_path6               = neighbor_group.value.adv_additional_path6
      adv_additional_path_vpnv4          = neighbor_group.value.adv_additional_path_vpnv4
      adv_additional_path_vpnv6          = neighbor_group.value.adv_additional_path_vpnv6
      password                           = neighbor_group.value.password
      auth_options                       = neighbor_group.value.auth_options
      graceful_shutdown_community        = neighbor_group.value.graceful_shutdown_community
      graceful_shutdown_local_preference = neighbor_group.value.graceful_shutdown_local_preference
      graceful_shutdown_delay            = neighbor_group.value.graceful_shutdown_delay
      use_sdwan                          = neighbor_group.value.use_sdwan
    }
  }
  dynamic "neighbor_range" {
    for_each = [for o in each.value.neighbor_range : o]
    content {
      id               = neighbor_range.value.id
      prefix           = neighbor_range.value.prefix
      max_neighbor_num = neighbor_range.value.max_neighbor_num
      neighbor_group   = neighbor_range.value.neighbor_group
    }
  }
  dynamic "neighbor_range6" {
    for_each = [for o in each.value.neighbor_range6 : o]
    content {
      id               = neighbor_range6.value.id
      prefix6          = neighbor_range6.value.prefix
      max_neighbor_num = neighbor_range6.value.max_neighbor_num
      neighbor_group   = neighbor_range6.value.neighbor_group
    }
  }

  dynamic "network" {
    for_each = [for o in each.value.network : o]
    content {
      id                   = network.value.id
      prefix               = network.value.prefix
      network_import_check = network.value.network_import_check
      backdoor             = network.value.backdoor
      route_map            = network.value.route_map
      prefix_name          = network.value.prefix_name
    }
  }

  dynamic "network6" {
    for_each = [for o in each.value.network6 : o]
    content {
      id                   = network6.value.id
      prefix6              = network6.value.prefix
      network_import_check = network6.value.network_import_check
      backdoor             = network6.value.backdoor
      route_map            = network6.value.route_map
    }
  }

  dynamic "redistribute" {
    for_each = [for o in each.value.redistribute : o]
    content {
      name           = redistribute.value.name
      status         = redistribute.value.status
      status_evpn    = redistribute.value.status_evpn
      route_map      = redistribute.value.route_map
      route_map_evpn = redistribute.value.route_map_evpn
    }
  }

  dynamic "redistribute6" {
    for_each = [for o in each.value.redistribute6 : o]
    content {
      name      = redistribute6.value.name
      status    = redistribute6.value.status
      route_map = redistribute6.value.route_map
    }
  }

  dynamic "admin_distance" {
    for_each = [for o in each.value.admin_distance : o]
    content {
      id               = admin_distance.value.id
      neighbour_prefix = admin_distance.value.neighbour_prefix
      route_list       = admin_distance.value.route_list
      distance         = admin_distance.value.distance
    }
  }

  dynamic "vrf" {
    for_each = [for o in each.value.vrf : o]
    content {
      vrf              = vrf.value.vrf
      role             = vrf.value.role
      rd               = vrf.value.rd
      import_route_map = vrf.value.import_route_map

      dynamic "export_rt" {
        for_each = [for p in vrf.value.export_rt : p]
        content {
          route_target = export_rt.value
        }
      }
      dynamic "import_rt" {
        for_each = [for p in vrf.value.import_rt : p]
        content {
          route_target = import_rt.value
        }
      }
      dynamic "leak_target" {
        for_each = [for p in vrf.value.leak_target : p]
        content {
          vrf       = leak_target.value.vrf
          route_map = leak_target.value.route_map
          interface = leak_target.value.interface
        }
      }
    }
  }

  dynamic "vrf6" {
    for_each = [for o in each.value.vrf6 : o]
    content {
      vrf              = vrf6.value.vrf
      role             = vrf6.value.role
      rd               = vrf6.value.rd
      import_route_map = vrf6.value.import_route_map

      dynamic "export_rt" {
        for_each = [for p in vrf6.value.export_rt : p]
        content {
          route_target = export_rt.value
        }
      }
      dynamic "import_rt" {
        for_each = [for p in vrf6.value.import_rt : p]
        content {
          route_target = import_rt.value
        }
      }
      dynamic "leak_target" {
        for_each = [for p in vrf6.value.leak_target : p]
        content {
          vrf       = leak_target.value.vrf
          route_map = leak_target.value.route_map
          interface = leak_target.value.interface
        }
      }
    }
  }

  dynamic "vrf_leak" {
    for_each = [for o in each.value.vrf_leak : o]
    content {
      vrf = vrf_leak.value.vrf
      dynamic "target" {
        for_each = [for p in vrf_leak.value.target : p]
        content {
          vrf       = target.value.vrf
          route_map = target.value.route_map
          interface = target.value.interface
        }
      }
    }
  }

  dynamic "vrf_leak6" {
    for_each = [for o in each.value.vrf_leak6 : o]
    content {
      vrf = vrf_leak6.value.vrf
      dynamic "target" {
        for_each = [for p in vrf_leak6.value.target : p]
        content {
          vrf       = target.value.vrf
          route_map = target.value.route_map
          interface = target.value.interface
        }
      }
    }
  }
}

resource "fortios_routerbgp_neighbor" "peer" {
  for_each   = { for peer in var.neighbor : peer.ip => peer }
  depends_on = [fortios_router_routemap.routemap]

  ip                                 = each.value.ip
  name                               = each.value.name
  advertisement_interval             = each.value.advertisement_interval
  allowas_in_enable                  = each.value.allowas_in_enable
  allowas_in_enable6                 = each.value.allowas_in_enable6
  allowas_in_enable_vpnv4            = each.value.allowas_in_enable_vpnv4
  allowas_in_enable_vpnv6            = each.value.allowas_in_enable_vpnv6
  allowas_in_enable_evpn             = each.value.allowas_in_enable_evpn
  allowas_in                         = each.value.allowas_in
  allowas_in6                        = each.value.allowas_in6
  allowas_in_vpnv4                   = each.value.allowas_in_vpnv4
  allowas_in_vpnv6                   = each.value.allowas_in_vpnv6
  allowas_in_evpn                    = each.value.allowas_in_evpn
  attribute_unchanged                = each.value.attribute_unchanged
  attribute_unchanged6               = each.value.attribute_unchanged6
  attribute_unchanged_vpnv4          = each.value.attribute_unchanged_vpnv4
  attribute_unchanged_vpnv6          = each.value.attribute_unchanged_vpnv6
  activate                           = each.value.activate
  activate6                          = each.value.activate6
  activate_vpnv4                     = each.value.activate_vpnv4
  activate_vpnv6                     = each.value.activate_vpnv6
  activate_evpn                      = each.value.activate_evpn
  bfd                                = each.value.bfd
  capability_dynamic                 = each.value.capability_dynamic
  capability_orf                     = each.value.capability_orf
  capability_orf6                    = each.value.capability_orf6
  capability_graceful_restart        = each.value.capability_graceful_restart
  capability_graceful_restart6       = each.value.capability_graceful_restart6
  capability_graceful_restart_vpnv4  = each.value.capability_graceful_restart_vpnv4
  capability_graceful_restart_vpnv6  = each.value.capability_graceful_restart_vpnv6
  capability_graceful_restart_evpn   = each.value.capability_graceful_restart_evpn
  capability_route_refresh           = each.value.capability_route_refresh
  capability_default_originate       = each.value.capability_default_originate
  capability_default_originate6      = each.value.capability_default_originate6
  dont_capability_negotiate          = each.value.dont_capability_negotiate
  ebgp_enforce_multihop              = each.value.ebgp_enforce_multihop
  link_down_failover                 = each.value.link_down_failover
  stale_route                        = each.value.stale_route
  next_hop_self                      = each.value.next_hop_self
  next_hop_self6                     = each.value.next_hop_self6
  next_hop_self_rr                   = each.value.next_hop_self_rr
  next_hop_self_rr6                  = each.value.next_hop_self_rr6
  next_hop_self_vpnv4                = each.value.next_hop_self_vpnv4
  next_hop_self_vpnv6                = each.value.next_hop_self_vpnv6
  next_hop_self_rr_vpnv4             = each.value.next_hop_self_rr_vpnv4
  next_hop_self_rr_vpnv6             = each.value.next_hop_self_rr_vpnv6
  override_capability                = each.value.override_capability
  passive                            = each.value.passive
  remove_private_as                  = each.value.remove_private_as
  remove_private_as6                 = each.value.remove_private_as6
  remove_private_as_vpnv4            = each.value.remove_private_as_vpnv4
  remove_private_as_vpnv6            = each.value.remove_private_as_vpnv6
  remove_private_as_evpn             = each.value.remove_private_as_evpn
  route_reflector_client             = each.value.route_reflector_client
  route_reflector_client6            = each.value.route_reflector_client6
  route_reflector_client_vpnv4       = each.value.route_reflector_client_vpnv4
  route_reflector_client_vpnv6       = each.value.route_reflector_client_vpnv6
  route_reflector_client_evpn        = each.value.route_reflector_client_evpn
  route_server_client                = each.value.route_server_client
  route_server_client6               = each.value.route_server_client6
  route_server_client_vpnv4          = each.value.route_server_client_vpnv4
  route_server_client_vpnv6          = each.value.route_server_client_vpnv6
  route_server_client_evpn           = each.value.route_server_client_evpn
  rr_attr_allow_change               = each.value.rr_attr_allow_change
  rr_attr_allow_change6              = each.value.rr_attr_allow_change6
  rr_attr_allow_change_vpnv4         = each.value.rr_attr_allow_change_vpnv4
  rr_attr_allow_change_vpnv6         = each.value.rr_attr_allow_change_vpnv6
  rr_attr_allow_change_evpn          = each.value.rr_attr_allow_change_evpn
  adv_evpn_route                     = each.value.adv_evpn_route
  shutdown                           = each.value.shutdown
  soft_reconfiguration               = each.value.soft_reconfiguration
  soft_reconfiguration6              = each.value.soft_reconfiguration6
  soft_reconfiguration_vpnv4         = each.value.soft_reconfiguration_vpnv4
  soft_reconfiguration_vpnv6         = each.value.soft_reconfiguration_vpnv6
  soft_reconfiguration_evpn          = each.value.soft_reconfiguration_evpn
  as_override                        = each.value.as_override
  as_override6                       = each.value.as_override6
  strict_capability_match            = each.value.strict_capability_match
  default_originate_routemap         = each.value.default_originate_routemap
  default_originate_routemap6        = each.value.default_originate_routemap6
  description                        = each.value.description
  distribute_list_in                 = each.value.distribute_list_in
  distribute_list_in6                = each.value.distribute_list_in6
  distribute_list_in_vpnv4           = each.value.distribute_list_in_vpnv4
  distribute_list_in_vpnv6           = each.value.distribute_list_in_vpnv6
  distribute_list_out                = each.value.distribute_list_out
  distribute_list_out6               = each.value.distribute_list_out6
  distribute_list_out_vpnv4          = each.value.distribute_list_out_vpnv4
  distribute_list_out_vpnv6          = each.value.distribute_list_out_vpnv6
  ebgp_multihop_ttl                  = each.value.ebgp_multihop_ttl
  filter_list_in                     = each.value.filter_list_in
  filter_list_in6                    = each.value.filter_list_in6
  filter_list_in_vpnv4               = each.value.filter_list_in_vpnv4
  filter_list_in_vpnv6               = each.value.filter_list_in_vpnv6
  filter_list_out                    = each.value.filter_list_out
  filter_list_out6                   = each.value.filter_list_out6
  filter_list_out_vpnv4              = each.value.filter_list_out_vpnv4
  filter_list_out_vpnv6              = each.value.filter_list_out_vpnv6
  interface                          = each.value.interface
  maximum_prefix                     = each.value.maximum_prefix
  maximum_prefix6                    = each.value.maximum_prefix6
  maximum_prefix_vpnv4               = each.value.maximum_prefix_vpnv4
  maximum_prefix_vpnv6               = each.value.maximum_prefix_vpnv6
  maximum_prefix_evpn                = each.value.maximum_prefix_evpn
  maximum_prefix_threshold           = each.value.maximum_prefix_threshold
  maximum_prefix_threshold6          = each.value.maximum_prefix_threshold6
  maximum_prefix_threshold_vpnv4     = each.value.maximum_prefix_threshold_vpnv4
  maximum_prefix_threshold_vpnv6     = each.value.maximum_prefix_threshold_vpnv6
  maximum_prefix_threshold_evpn      = each.value.maximum_prefix_threshold_evpn
  maximum_prefix_warning_only        = each.value.maximum_prefix_warning_only
  maximum_prefix_warning_only6       = each.value.maximum_prefix_warning_only6
  maximum_prefix_warning_only_vpnv4  = each.value.maximum_prefix_warning_only_vpnv4
  maximum_prefix_warning_only_vpnv6  = each.value.maximum_prefix_warning_only_vpnv6
  maximum_prefix_warning_only_evpn   = each.value.maximum_prefix_warning_only_evpn
  prefix_list_in                     = each.value.prefix_list_in
  prefix_list_in6                    = each.value.prefix_list_in6
  prefix_list_in_vpnv4               = each.value.prefix_list_in_vpnv4
  prefix_list_in_vpnv6               = each.value.prefix_list_in_vpnv6
  prefix_list_out                    = each.value.prefix_list_out
  prefix_list_out6                   = each.value.prefix_list_out6
  prefix_list_out_vpnv4              = each.value.prefix_list_out_vpnv4
  prefix_list_out_vpnv6              = each.value.prefix_list_out_vpnv6
  remote_as                          = each.value.remote_as
  local_as                           = each.value.local_as
  local_as_no_prepend                = each.value.local_as_no_prepend
  local_as_replace_as                = each.value.local_as_replace_as
  retain_stale_time                  = each.value.retain_stale_time
  route_map_in                       = each.value.route_map_in
  route_map_in6                      = each.value.route_map_in6
  route_map_in_vpnv4                 = each.value.route_map_in_vpnv4
  route_map_in_vpnv6                 = each.value.route_map_in_vpnv6
  route_map_in_evpn                  = each.value.route_map_in_evpn
  route_map_out                      = each.value.route_map_out
  route_map_out_preferable           = each.value.route_map_out_preferable
  route_map_out6                     = each.value.route_map_out6
  route_map_out6_preferable          = each.value.route_map_out6_preferable
  route_map_out_vpnv4                = each.value.route_map_out_vpnv4
  route_map_out_vpnv6                = each.value.route_map_out_vpnv6
  route_map_out_vpnv4_preferable     = each.value.route_map_out_vpnv4_preferable
  route_map_out_vpnv6_preferable     = each.value.route_map_out_vpnv6_preferable
  route_map_out_evpn                 = each.value.route_map_out_evpn
  send_community                     = each.value.send_community
  send_community6                    = each.value.send_community6
  send_community_vpnv4               = each.value.send_community_vpnv4
  send_community_vpnv6               = each.value.send_community_vpnv6
  send_community_evpn                = each.value.send_community_evpn
  keep_alive_timer                   = each.value.keep_alive_timer
  holdtime_timer                     = each.value.holdtime_timer
  connect_timer                      = each.value.connect_timer
  unsuppress_map                     = each.value.unsuppress_map
  unsuppress_map6                    = each.value.unsuppress_map6
  update_source                      = each.value.update_source
  enforce_preferred_source           = each.value.enforce_preferred_source
  weight                             = each.value.weight
  restart_time                       = each.value.restart_time
  additional_path                    = each.value.additional_path
  additional_path6                   = each.value.additional_path6
  additional_path_vpnv4              = each.value.additional_path_vpnv4
  additional_path_vpnv6              = each.value.additional_path_vpnv6
  adv_additional_path                = each.value.adv_additional_path
  adv_additional_path6               = each.value.adv_additional_path6
  adv_additional_path_vpnv4          = each.value.adv_additional_path_vpnv4
  adv_additional_path_vpnv6          = each.value.adv_additional_path_vpnv6
  password                           = each.value.password
  auth_options                       = each.value.auth_options
  graceful_shutdown_community        = each.value.graceful_shutdown_community
  graceful_shutdown_local_preference = each.value.graceful_shutdown_local_preference
  graceful_shutdown_delay            = each.value.graceful_shutdown_delay
  use_sdwan                          = each.value.use_sdwan
  dynamic_sort_subtable              = each.value.dynamic_sort_subtable
  get_all_tables                     = each.value.get_all_tables
  vdomparam                          = each.value.vdomparam
  update_if_exist                    = each.value.update_if_exist

  dynamic "conditional_advertise" {
    for_each = [for o in each.value.conditional_advertise : o]
    content {
      advertise_routemap = conditional_advertise.value.advertise_routemap
      condition_routemap = conditional_advertise.value.condition_routemap
      condition_type     = conditional_advertise.value.condition_type
    }
  }

  dynamic "conditional_advertise6" {
    for_each = [for o in each.value.conditional_advertise6 : o]
    content {
      advertise_routemap = conditional_advertise6.value.advertise_routemap
      condition_routemap = conditional_advertise6.value.condition_routemap
      condition_type     = conditional_advertise6.value.condition_type
    }
  }
}

resource "fortios_router_prefixlist6" "prefixlist6" {
  for_each              = { for prefix_list in var.prefixlist6 : prefix_list.name => prefix_list }
  name                  = each.value.name
  comments              = each.value.comments
  dynamic_sort_subtable = each.value.dynamic_sort_subtable
  get_all_tables        = each.value.get_all_tables
  vdomparam             = each.value.vdomparam
  update_if_exist       = each.value.update_if_exist

  dynamic "rule" {
    for_each = [for o in each.value.rule : o]
    content {
      id      = rule.value.id
      action  = rule.value.action
      prefix6 = rule.value.prefix6
      ge      = rule.value.ge
      le      = rule.value.le
      flags   = rule.value.flags
    }
  }
}

resource "fortios_router_prefixlist" "prefixlist" {
  for_each              = { for prefix_list in var.prefixlist : prefix_list.name => prefix_list }
  name                  = each.value.name
  comments              = each.value.comments
  dynamic_sort_subtable = each.value.dynamic_sort_subtable
  get_all_tables        = each.value.get_all_tables
  vdomparam             = each.value.vdomparam
  update_if_exist       = each.value.update_if_exist

  dynamic "rule" {
    for_each = [for o in each.value.rule : o]
    content {
      id     = rule.value.id
      action = rule.value.action
      prefix = rule.value.prefix
      ge     = rule.value.ge
      le     = rule.value.le
      flags  = rule.value.flags
    }
  }
}

resource "fortios_router_routemap" "routemap" {
  depends_on = [
    fortios_router_prefixlist.prefixlist,
    fortios_router_prefixlist6.prefixlist6,
  ]
  for_each              = { for route_map in var.routemap : route_map.name => route_map }
  name                  = each.value.name
  comments              = each.value.comments
  dynamic_sort_subtable = each.value.dynamic_sort_subtable
  get_all_tables        = each.value.get_all_tables
  vdomparam             = each.value.vdomparam
  update_if_exist       = each.value.update_if_exist

  dynamic "rule" {
    for_each = [for o in each.value.rule : o]
    content {
      id                                     = rule.value.id
      action                                 = rule.value.action
      match_as_path                          = rule.value.match_as_path
      match_community                        = rule.value.match_community
      match_extcommunity                     = rule.value.match_extcommunity
      match_community_exact                  = rule.value.match_community_exact
      match_extcommunity_exact               = rule.value.match_extcommunity_exact
      match_origin                           = rule.value.match_origin
      match_interface                        = rule.value.match_interface
      match_ip_address                       = rule.value.match_ip_address
      match_ip6_address                      = rule.value.match_ip6_address
      match_ip_nexthop                       = rule.value.match_ip_nexthop
      match_ip6_nexthop                      = rule.value.match_ip6_nexthop
      match_metric                           = rule.value.match_metric
      match_route_type                       = rule.value.match_route_type
      match_tag                              = rule.value.match_tag
      match_vrf                              = rule.value.match_vrf
      match_suppress                         = rule.value.match_suppress
      set_aggregator_as                      = rule.value.set_aggregator_as
      set_aggregator_ip                      = rule.value.set_aggregator_ip
      set_aspath_action                      = rule.value.set_aspath_action
      set_atomic_aggregate                   = rule.value.set_atomic_aggregate
      set_community_delete                   = rule.value.set_community_delete
      set_community_additive                 = rule.value.set_community_additive
      set_dampening_reachability_half_life   = rule.value.set_dampening_reachability_half_life
      set_dampening_reuse                    = rule.value.set_dampening_reuse
      set_dampening_suppress                 = rule.value.set_dampening_suppress
      set_dampening_max_suppress             = rule.value.set_dampening_max_suppress
      set_dampening_unreachability_half_life = rule.value.set_dampening_unreachability_half_life
      set_ip_nexthop                         = rule.value.set_ip_nexthop
      set_ip_prefsrc                         = rule.value.set_ip_prefsrc
      set_vpnv4_nexthop                      = rule.value.set_vpnv4_nexthop
      set_ip6_nexthop                        = rule.value.set_ip6_nexthop
      set_ip6_nexthop_local                  = rule.value.set_ip6_nexthop_local
      set_vpnv6_nexthop                      = rule.value.set_vpnv6_nexthop
      set_vpnv6_nexthop_local                = rule.value.set_vpnv6_nexthop_local
      set_local_preference                   = rule.value.set_local_preference
      set_metric                             = rule.value.set_metric
      set_metric_type                        = rule.value.set_metric_type
      set_originator_id                      = rule.value.set_originator_id
      set_origin                             = rule.value.set_origin
      set_tag                                = rule.value.set_tag
      set_weight                             = rule.value.set_weight
      set_flags                              = rule.value.set_flags
      match_flags                            = rule.value.match_flags
      set_route_tag                          = rule.value.set_route_tag
      set_priority                           = rule.value.set_priority

      dynamic "set_aspath" {
        for_each = [for p in rule.value.set_aspath : p]
        content {
          as = set_aspath.value
        }
      }

      dynamic "set_community" {
        for_each = [for p in rule.value.set_community : p]
        content {
          community = set_community.value
        }
      }

      dynamic "set_extcommunity_rt" {
        for_each = [for p in rule.value.set_extcommunity_rt : p]
        content {
          community = set_extcommunity_rt.value
        }
      }

      dynamic "set_extcommunity_soo" {
        for_each = [for p in rule.value.set_extcommunity_soo : p]
        content {
          community = set_extcommunity_soo.value
        }
      }
    }
  }
}
