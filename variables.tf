variable "routerbgp" {
  description = "BGP Router configuration"
  default     = []

  type = list(object({
    as_string                           = optional(string)
    as                                  = string
    router_id                           = optional(string)
    keepalive_timer                     = optional(string)
    holdtime_timer                      = optional(string)
    always_compare_med                  = optional(string)
    bestpath_as_path_ignore             = optional(string)
    bestpath_cmp_confed_aspath          = optional(string)
    bestpath_cmp_routerid               = optional(string)
    bestpath_med_confed                 = optional(string)
    bestpath_med_missing_as_worst       = optional(string)
    client_to_client_reflection         = optional(string)
    dampening                           = optional(string)
    dampening6                          = optional(string)
    deterministic_med                   = optional(string)
    ebgp_multipath                      = optional(string)
    ibgp_multipath                      = optional(string)
    enforce_first_as                    = optional(string)
    fast_external_failover              = optional(string)
    log_neighbour_changes               = optional(string)
    network_import_check                = optional(string)
    ignore_optional_capability          = optional(string)
    additional_path                     = optional(string)
    additional_path6                    = optional(string)
    additional_path_vpnv4               = optional(string)
    additional_path_vpnv6               = optional(string)
    multipath_recursive_distance        = optional(string)
    recursive_next_hop                  = optional(string)
    recursive_inherit_priority          = optional(string)
    tag_resolve_mode                    = optional(string)
    cluster_id                          = optional(string)
    confederation_identifier            = optional(string)
    confederation_peers                 = optional(list(string), [])
    dampening_route_map                 = optional(string)
    dampening_reachability_half_life    = optional(number)
    dampening_reuse                     = optional(string)
    dampening_suppress                  = optional(string)
    dampening_max_suppress_time         = optional(number)
    dampening_unreachability_half_life  = optional(number)
    dampening6_route_map                = optional(string)
    dampening6_reachability_half_life   = optional(number)
    dampening6_reuse                    = optional(string)
    dampening6_suppress                 = optional(string)
    dampening6_max_suppress_time        = optional(string)
    dampening6_unreachability_half_life = optional(number)
    default_local_preference            = optional(string)
    scan_time                           = optional(number)
    distance_external                   = optional(string)
    distance_internal                   = optional(string)
    distance_local                      = optional(string)
    synchronization                     = optional(string)
    graceful_restart                    = optional(string)
    graceful_restart_time               = optional(number)
    graceful_stalepath_time             = optional(number)
    graceful_update_delay               = optional(number)
    graceful_end_on_timer               = optional(string)
    additional_path_select              = optional(string)
    additional_path_select6             = optional(string)
    additional_path_select_vpnv4        = optional(string)
    additional_path_select_vpnv6        = optional(string)
    cross_family_conditional_adv        = optional(string)
    aggregate_address = optional(list(object({
      id           = optional(number)
      prefix       = optional(string)
      as_set       = optional(string)
      summary_only = optional(string)
    })), [])
    aggregate_address6 = optional(list(object({
      id           = optional(number)
      prefix6      = optional(string)
      as_set       = optional(string)
      summary_only = optional(string)
    })), [])
    neighbor = optional(list(object({
      ip                                = optional(string)
      name                              = optional(string)
      advertisement_interval            = optional(number)
      allowas_in_enable                 = optional(string)
      allowas_in_enable6                = optional(string)
      allowas_in_enable_vpnv4           = optional(string)
      allowas_in_enable_vpnv6           = optional(string)
      allowas_in_enable_evpn            = optional(string)
      allowas_in                        = optional(number)
      allowas_in6                       = optional(number)
      allowas_in_vpnv4                  = optional(number)
      allowas_in_vpnv6                  = optional(number)
      allowas_in_evpn                   = optional(number)
      attribute_unchanged               = optional(string)
      attribute_unchanged6              = optional(string)
      attribute_unchanged_vpnv4         = optional(string)
      attribute_unchanged_vpnv6         = optional(string)
      activate                          = optional(string)
      activate6                         = optional(string)
      activate_vpnv4                    = optional(string)
      activate_vpnv6                    = optional(string)
      activate_evpn                     = optional(string)
      bfd                               = optional(string)
      capability_dynamic                = optional(string)
      capability_orf                    = optional(string)
      capability_orf6                   = optional(string)
      capability_graceful_restart       = optional(string)
      capability_graceful_restart6      = optional(string)
      capability_graceful_restart_vpnv4 = optional(string)
      capability_graceful_restart_vpnv6 = optional(string)
      capability_graceful_restart_evpn  = optional(string)
      capability_route_refresh          = optional(string)
      capability_default_originate      = optional(string)
      capability_default_originate6     = optional(string)
      dont_capability_negotiate         = optional(string)
      ebgp_enforce_multihop             = optional(string)
      link_down_failover                = optional(string)
      stale_route                       = optional(string)
      next_hop_self                     = optional(string)
      next_hop_self6                    = optional(string)
      next_hop_self_rr                  = optional(string)
      next_hop_self_rr6                 = optional(string)
      next_hop_self_vpnv4               = optional(string)
      next_hop_self_vpnv6               = optional(string)
      next_hop_self_rr_vpnv4            = optional(string)
      next_hop_self_rr_vpnv6            = optional(string)
      override_capability               = optional(string)
      passive                           = optional(string)
      remove_private_as                 = optional(string)
      remove_private_as6                = optional(string)
      remove_private_as_vpnv4           = optional(string)
      remove_private_as_vpnv6           = optional(string)
      remove_private_as_evpn            = optional(string)
      route_reflector_client            = optional(string)
      route_reflector_client6           = optional(string)
      route_reflector_client_vpnv4      = optional(string)
      route_reflector_client_vpnv6      = optional(string)
      route_reflector_client_evpn       = optional(string)
      route_server_client               = optional(string)
      route_server_client6              = optional(string)
      route_server_client_vpnv4         = optional(string)
      route_server_client_vpnv6         = optional(string)
      route_server_client_evpn          = optional(string)
      rr_attr_allow_change              = optional(string)
      rr_attr_allow_change6             = optional(string)
      rr_attr_allow_change_vpnv4        = optional(string)
      rr_attr_allow_change_vpnv6        = optional(string)
      rr_attr_allow_change_evpn         = optional(string)
      adv_evpn_route                    = optional(string)
      shutdown                          = optional(string)
      soft_reconfiguration              = optional(string)
      soft_reconfiguration6             = optional(string)
      soft_reconfiguration_vpnv4        = optional(string)
      soft_reconfiguration_vpnv6        = optional(string)
      soft_reconfiguration_evpn         = optional(string)
      as_override                       = optional(string)
      as_override6                      = optional(string)
      strict_capability_match           = optional(string)
      default_originate_routemap        = optional(string)
      default_originate_routemap6       = optional(string)
      description                       = optional(string)
      distribute_list_in                = optional(string)
      distribute_list_in6               = optional(string)
      distribute_list_in_vpnv4          = optional(string)
      distribute_list_in_vpnv6          = optional(string)
      distribute_list_out               = optional(string)
      distribute_list_out6              = optional(string)
      distribute_list_out_vpnv4         = optional(string)
      distribute_list_out_vpnv6         = optional(string)
      ebgp_multihop_ttl                 = optional(number)
      filter_list_in                    = optional(string)
      filter_list_in6                   = optional(string)
      filter_list_in_vpnv4              = optional(string)
      filter_list_in_vpnv6              = optional(string)
      filter_list_out                   = optional(string)
      filter_list_out6                  = optional(string)
      filter_list_out_vpnv4             = optional(string)
      filter_list_out_vpnv6             = optional(string)
      interface                         = optional(string)
      maximum_prefix                    = optional(number)
      maximum_prefix6                   = optional(number)
      maximum_prefix_vpnv4              = optional(number)
      maximum_prefix_vpnv6              = optional(number)
      maximum_prefix_evpn               = optional(number)
      maximum_prefix_threshold          = optional(number)
      maximum_prefix_threshold6         = optional(number)
      maximum_prefix_threshold_vpnv4    = optional(number)
      maximum_prefix_threshold_vpnv6    = optional(number)
      maximum_prefix_threshold_evpn     = optional(number)
      maximum_prefix_warning_only       = optional(string)
      maximum_prefix_warning_only6      = optional(string)
      maximum_prefix_warning_only_vpnv4 = optional(string)
      maximum_prefix_warning_only_vpnv6 = optional(string)
      maximum_prefix_warning_only_evpn  = optional(string)
      prefix_list_in                    = optional(string)
      prefix_list_in6                   = optional(string)
      prefix_list_in_vpnv4              = optional(string)
      prefix_list_in_vpnv6              = optional(string)
      prefix_list_out                   = optional(string)
      prefix_list_out6                  = optional(string)
      prefix_list_out_vpnv4             = optional(string)
      prefix_list_out_vpnv6             = optional(string)
      remote_as                         = optional(number)
      local_as                          = optional(number)
      local_as_no_prepend               = optional(string)
      local_as_replace_as               = optional(string)
      retain_stale_time                 = optional(string)
      route_map_in                      = optional(string)
      route_map_in6                     = optional(string)
      route_map_in_vpnv4                = optional(string)
      route_map_in_vpnv6                = optional(string)
      route_map_in_evpn                 = optional(string)
      route_map_out                     = optional(string)
      route_map_out_preferable          = optional(string)
      route_map_out6                    = optional(string)
      route_map_out6_preferable         = optional(string)
      route_map_out_vpnv4               = optional(string)
      route_map_out_vpnv6               = optional(string)
      route_map_out_vpnv4_preferable    = optional(string)
      route_map_out_vpnv6_preferable    = optional(string)
      route_map_out_evpn                = optional(string)
      send_community                    = optional(string)
      send_community6                   = optional(string)
      send_community_vpnv4              = optional(string)
      send_community_vpnv6              = optional(string)
      send_community_evpn               = optional(string)
      keep_alive_timer                  = optional(number)
      holdtime_timer                    = optional(number)
      connect_timer                     = optional(number)
      unsuppress_map                    = optional(string)
      unsuppress_map6                   = optional(string)
      update_source                     = optional(string)
      enforce_preferred_source          = optional(string)
      weight                            = optional(number)
      restart_time                      = optional(number)
      additional_path                   = optional(string)
      additional_path6                  = optional(string)
      additional_path_vpnv4             = optional(string)
      additional_path_vpnv6             = optional(string)
      adv_additional_path               = optional(string)
      adv_additional_path6              = optional(string)
      adv_additional_path_vpnv4         = optional(string)
      adv_additional_path_vpnv6         = optional(string)
      password                          = optional(string)
      auth_options                      = optional(string)
      conditional_advertise = optional(list(object({
        advertise_routemap = optional(string)
        condition_routemap = optional(string)
        condition_type     = optional(string)
      })), [])
      conditional_advertise6 = optional(list(object({
        advertise_routemap = optional(string)
        condition_routemap = optional(string)
        condition_type     = optional(string)
      })), [])
      graceful_shutdown_community        = optional(string)
      graceful_shutdown_local_preference = optional(string)
      graceful_shutdown_delay            = optional(number)
      use_sdwan                          = optional(string)
    })), [])
    neighbor_group = optional(list(object({
      name                               = optional(string)
      advertisement_interval             = optional(number)
      allowas_in_enable                  = optional(string)
      allowas_in_enable6                 = optional(string)
      allowas_in_enable_vpnv4            = optional(string)
      allowas_in_enable_vpnv6            = optional(string)
      allowas_in_enable_evpn             = optional(string)
      allowas_in                         = optional(number)
      allowas_in6                        = optional(number)
      allowas_in_vpnv4                   = optional(number)
      allowas_in_vpnv6                   = optional(number)
      allowas_in_evpn                    = optional(number)
      attribute_unchanged                = optional(string)
      attribute_unchanged6               = optional(string)
      attribute_unchanged_vpnv4          = optional(string)
      attribute_unchanged_vpnv6          = optional(string)
      activate                           = optional(string)
      activate6                          = optional(string)
      activate_vpnv4                     = optional(string)
      activate_vpnv6                     = optional(string)
      activate_evpn                      = optional(string)
      bfd                                = optional(string)
      capability_dynamic                 = optional(string)
      capability_orf                     = optional(string)
      capability_orf6                    = optional(string)
      capability_graceful_restart        = optional(string)
      capability_graceful_restart6       = optional(string)
      capability_graceful_restart_vpnv4  = optional(string)
      capability_graceful_restart_vpnv6  = optional(string)
      capability_graceful_restart_evpn   = optional(string)
      capability_route_refresh           = optional(string)
      capability_default_originate       = optional(string)
      capability_default_originate6      = optional(string)
      dont_capability_negotiate          = optional(string)
      ebgp_enforce_multihop              = optional(string)
      link_down_failover                 = optional(string)
      stale_route                        = optional(string)
      next_hop_self                      = optional(string)
      next_hop_self6                     = optional(string)
      next_hop_self_rr                   = optional(string)
      next_hop_self_rr6                  = optional(string)
      next_hop_self_vpnv4                = optional(string)
      next_hop_self_vpnv6                = optional(string)
      next_hop_self_rr_vpnv4             = optional(string)
      next_hop_self_rr_vpnv6             = optional(string)
      override_capability                = optional(string)
      passive                            = optional(string)
      remove_private_as                  = optional(string)
      remove_private_as6                 = optional(string)
      remove_private_as_vpnv4            = optional(string)
      remove_private_as_vpnv6            = optional(string)
      remove_private_as_evpn             = optional(string)
      route_reflector_client             = optional(string)
      route_reflector_client6            = optional(string)
      route_reflector_client_vpnv4       = optional(string)
      route_reflector_client_vpnv6       = optional(string)
      route_reflector_client_evpn        = optional(string)
      route_server_client                = optional(string)
      route_server_client6               = optional(string)
      route_server_client_vpnv4          = optional(string)
      route_server_client_vpnv6          = optional(string)
      route_server_client_evpn           = optional(string)
      rr_attr_allow_change               = optional(string)
      rr_attr_allow_change6              = optional(string)
      rr_attr_allow_change_vpnv4         = optional(string)
      rr_attr_allow_change_vpnv6         = optional(string)
      rr_attr_allow_change_evpn          = optional(string)
      adv_evpn_route                     = optional(string)
      shutdown                           = optional(string)
      soft_reconfiguration               = optional(string)
      soft_reconfiguration6              = optional(string)
      soft_reconfiguration_vpnv4         = optional(string)
      soft_reconfiguration_vpnv6         = optional(string)
      soft_reconfiguration_evpn          = optional(string)
      as_override                        = optional(string)
      as_override6                       = optional(string)
      strict_capability_match            = optional(string)
      default_originate_routemap         = optional(string)
      default_originate_routemap6        = optional(string)
      description                        = optional(string)
      distribute_list_in                 = optional(string)
      distribute_list_in6                = optional(string)
      distribute_list_in_vpnv4           = optional(string)
      distribute_list_in_vpnv6           = optional(string)
      distribute_list_out                = optional(string)
      distribute_list_out6               = optional(string)
      distribute_list_out_vpnv4          = optional(string)
      distribute_list_out_vpnv6          = optional(string)
      ebgp_multihop_ttl                  = optional(number)
      filter_list_in                     = optional(string)
      filter_list_in6                    = optional(string)
      filter_list_in_vpnv4               = optional(string)
      filter_list_in_vpnv6               = optional(string)
      filter_list_out                    = optional(string)
      filter_list_out6                   = optional(string)
      filter_list_out_vpnv4              = optional(string)
      filter_list_out_vpnv6              = optional(string)
      interface                          = optional(string)
      maximum_prefix                     = optional(number)
      maximum_prefix6                    = optional(number)
      maximum_prefix_vpnv4               = optional(number)
      maximum_prefix_vpnv6               = optional(number)
      maximum_prefix_evpn                = optional(number)
      maximum_prefix_threshold           = optional(number)
      maximum_prefix_threshold6          = optional(number)
      maximum_prefix_threshold_vpnv4     = optional(number)
      maximum_prefix_threshold_vpnv6     = optional(number)
      maximum_prefix_threshold_evpn      = optional(number)
      maximum_prefix_warning_only        = optional(string)
      maximum_prefix_warning_only6       = optional(string)
      maximum_prefix_warning_only_vpnv4  = optional(string)
      maximum_prefix_warning_only_vpnv6  = optional(string)
      maximum_prefix_warning_only_evpn   = optional(string)
      prefix_list_in                     = optional(string)
      prefix_list_in6                    = optional(string)
      prefix_list_in_vpnv4               = optional(string)
      prefix_list_in_vpnv6               = optional(string)
      prefix_list_out                    = optional(string)
      prefix_list_out6                   = optional(string)
      prefix_list_out_vpnv4              = optional(string)
      prefix_list_out_vpnv6              = optional(string)
      remote_as                          = optional(number)
      remote_as_filter                   = optional(number)
      local_as                           = optional(number)
      local_as_no_prepend                = optional(string)
      local_as_replace_as                = optional(string)
      retain_stale_time                  = optional(number)
      route_map_in                       = optional(string)
      route_map_in6                      = optional(string)
      route_map_in_vpnv4                 = optional(string)
      route_map_in_vpnv6                 = optional(string)
      route_map_in_evpn                  = optional(string)
      route_map_out                      = optional(string)
      route_map_out_preferable           = optional(string)
      route_map_out6                     = optional(string)
      route_map_out6_preferable          = optional(string)
      route_map_out_vpnv4                = optional(string)
      route_map_out_vpnv6                = optional(string)
      route_map_out_vpnv4_preferable     = optional(string)
      route_map_out_vpnv6_preferable     = optional(string)
      route_map_out_evpn                 = optional(string)
      send_community                     = optional(string)
      send_community6                    = optional(string)
      send_community_vpnv4               = optional(string)
      send_community_vpnv6               = optional(string)
      send_community_evpn                = optional(string)
      keep_alive_timer                   = optional(number)
      holdtime_timer                     = optional(number)
      connect_timer                      = optional(number)
      unsuppress_map                     = optional(string)
      unsuppress_map6                    = optional(string)
      update_source                      = optional(string)
      enforce_preferred_source           = optional(string)
      weight                             = optional(number)
      restart_time                       = optional(number)
      additional_path                    = optional(string)
      additional_path6                   = optional(string)
      additional_path_vpnv4              = optional(string)
      additional_path_vpnv6              = optional(string)
      adv_additional_path                = optional(number)
      adv_additional_path6               = optional(number)
      adv_additional_path_vpnv4          = optional(number)
      adv_additional_path_vpnv6          = optional(number)
      password                           = optional(string)
      auth_options                       = optional(string)
      graceful_shutdown_community        = optional(string)
      graceful_shutdown_local_preference = optional(string)
      graceful_shutdown_delay            = optional(number)
      use_sdwan                          = optional(string)
    })), [])
    neighbor_range = optional(list(object({
      id               = optional(number)
      prefix           = optional(string)
      max_neighbor_num = optional(number)
      neighbor_group   = optional(string)
    })), [])
    neighbor_range6 = optional(list(object({
      id               = optional(number)
      prefix           = optional(string)
      max_neighbor_num = optional(number)
      neighbor_group   = optional(string)
    })), [])
    network = optional(list(object({
      id                    = optional(number)
      prefix                = optional(string)
      network_import_check  = optional(string)
      backdoor              = optional(string)
      route_map             = optional(string)
      prefix_name           = optional(string)
      internet_service_name = optional(string)
    })), [])
    network6 = optional(list(object({
      id                   = optional(number)
      prefix6              = optional(string)
      network_import_check = optional(string)
      backdoor             = optional(string)
      route_map            = optional(string)
    })), [])
    redistribute = optional(list(object({
      name           = optional(string)
      status         = optional(string)
      status_evpn    = optional(string)
      route_map      = optional(string)
      route_map_evpn = optional(string)
    })), [])
    redistribute6 = optional(list(object({
      name      = optional(string)
      status    = optional(string)
      route_map = optional(string)
    })), [])
    admin_distance = optional(list(object({
      id              = optional(number)
      neighbor_prefix = optional(string)
      route_list      = optional(string)
      distance        = optional(number)
    })), [])
    vrf = optional(list(object({
      vrf              = optional(number)
      role             = optional(string)
      rd               = optional(string)
      export_rt        = optional(list(string), [])
      import_rt        = optional(list(string), [])
      import_route_map = optional(string)
      leak_target = optional(list(object({
        vrf       = optional(number)
        route_map = optional(string)
        interface = optional(string)
      })), [])
    })), [])
    vrf6 = optional(list(object({
      vrf              = optional(number)
      role             = optional(string)
      rd               = optional(string)
      export_rt        = optional(list(string), [])
      import_rt        = optional(list(string), [])
      import_route_map = optional(string)
      leak_target = optional(list(object({
        vrf       = optional(number)
        route_map = optional(string)
        interface = optional(string)
      })), [])
    })), [])
    vrf_leak = optional(list(object({
      vrf = optional(number)
      target = optional(list(object({
        vrf       = optional(number)
        route_map = optional(string)
        interface = optional(string)
      })), [])
    })), [])
    vrf_leak6 = optional(list(object({
      vrf = optional(number)
      target = optional(list(object({
        vrf       = optional(number)
        route_map = optional(string)
        interface = optional(string)
      })), [])
    })), [])
    dynamic_sort_subtable = optional(string, "natural")
    get_all_tables        = optional(bool, "false")
    vdomparam             = optional(string)
  }))

  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.as == null || (o.as >= 1 && o.as <= 4294967295)]))
    error_message = "Parameter `as` must be in the range 1-4294967295."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.always_compare_med == null || contains(["enable", "disable"], o.always_compare_med)]))
    error_message = "Parameter `always_compare_med` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.bestpath_as_path_ignore == null || contains(["enable", "disable"], o.bestpath_as_path_ignore)]))
    error_message = "Parameter `bestpath_as_path_ignore` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.bestpath_cmp_confed_aspath == null || contains(["enable", "disable"], o.bestpath_cmp_confed_aspath)]))
    error_message = "Parameter `bestpath_cmp_confed_aspath` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.bestpath_cmp_routerid == null || contains(["enable", "disable"], o.bestpath_cmp_routerid)]))
    error_message = "Parameter `bestpath_cmp_routerid` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.bestpath_med_confed == null || contains(["enable", "disable"], o.bestpath_med_confed)]))
    error_message = "Parameter `bestpath_med_confed` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.bestpath_med_missing_as_worst == null || contains(["enable", "disable"], o.bestpath_med_missing_as_worst)]))
    error_message = "Parameter `bestpath_med_missing_as_worst` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.client_to_client_reflection == null || contains(["enable", "disable"], o.client_to_client_reflection)]))
    error_message = "Parameter `client_to_client_reflection` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.dampening == null || contains(["enable", "disable"], o.dampening)]))
    error_message = "Parameter `dampening` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.dampening6 == null || contains(["enable", "disable"], o.dampening6)]))
    error_message = "Parameter `dampening6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.deterministic_med == null || contains(["enable", "disable"], o.deterministic_med)]))
    error_message = "Parameter `deterministic_med` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.ebgp_multipath == null || contains(["enable", "disable"], o.ebgp_multipath)]))
    error_message = "Parameter `ebgp_multipath` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.ibgp_multipath == null || contains(["enable", "disable"], o.ibgp_multipath)]))
    error_message = "Parameter `ibgp_multipath` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.enforce_first_as == null || contains(["enable", "disable"], o.enforce_first_as)]))
    error_message = "Parameter `enforce_first_as` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.fast_external_failover == null || contains(["enable", "disable"], o.fast_external_failover)]))
    error_message = "Parameter `fast_external_failover` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.log_neighbour_changes == null || contains(["enable", "disable"], o.log_neighbour_changes)]))
    error_message = "Parameter `log_neighbour_changes` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.network_import_check == null || contains(["enable", "disable"], o.network_import_check)]))
    error_message = "Parameter `network_import_check` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.ignore_optional_capability == null || contains(["enable", "disable"], o.ignore_optional_capability)]))
    error_message = "Parameter `ignore_optional_capability` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.additional_path == null || contains(["enable", "disable"], o.additional_path)]))
    error_message = "Parameter `additional_path` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.additional_path6 == null || contains(["enable", "disable"], o.additional_path6)]))
    error_message = "Parameter `additional_path6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.additional_path_vpnv4 == null || contains(["enable", "disable"], o.additional_path_vpnv4)]))
    error_message = "Parameter `additional_path_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.additional_path_vpnv6 == null || contains(["enable", "disable"], o.additional_path_vpnv6)]))
    error_message = "Parameter `additional_path_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.multipath_recursive_distance == null || contains(["enable", "disable"], o.multipath_recursive_distance)]))
    error_message = "Parameter `multipath_recursive_distance` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.recursive_next_hop == null || contains(["enable", "disable"], o.recursive_next_hop)]))
    error_message = "Parameter `recursive_next_hop` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.recursive_inherit_priority == null || contains(["enable", "disable"], o.recursive_inherit_priority)]))
    error_message = "Parameter `recursive_inherit_priority` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.synchronization == null || contains(["enable", "disable"], o.synchronization)]))
    error_message = "Parameter `synchronization` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.graceful_restart == null || contains(["enable", "disable"], o.graceful_restart)]))
    error_message = "Parameter `graceful_restart` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.graceful_end_on_timer == null || contains(["enable", "disable"], o.graceful_end_on_timer)]))
    error_message = "Parameter `graceful_end_on_timer` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : o.cross_family_conditional_adv == null || contains(["enable", "disable"], o.cross_family_conditional_adv)]))
    error_message = "Parameter `cross_family_conditional_adv` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.aggregate_address : p.as_set == null || contains(["enable", "disable"], p.as_set)]]))
    error_message = "Parameter `aggregate_address.as_set` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.aggregate_address : p.summary_only == null || contains(["enable", "disable"], p.summary_only)]]))
    error_message = "Parameter `aggregate_address.summary_only` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.aggregate_address6 : p.as_set == null || contains(["enable", "disable"], p.as_set)]]))
    error_message = "Parameter `aggregate_address6.as_set` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.aggregate_address6 : p.summary_only == null || contains(["enable", "disable"], p.summary_only)]]))
    error_message = "Parameter `aggregate_address6.summary_only` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.allowas_in_enable == null || contains(["enable", "disable"], p.allowas_in_enable)]]))
    error_message = "Parameter `neighbor.allowas_in_enable` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.allowas_in_enable6 == null || contains(["enable", "disable"], p.allowas_in_enable6)]]))
    error_message = "Parameter `neighbor.allowas_in_enable6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.allowas_in_enable_vpnv4 == null || contains(["enable", "disable"], p.allowas_in_enable_vpnv4)]]))
    error_message = "Parameter `neighbor.allowas_in_enable_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.allowas_in_enable_vpnv6 == null || contains(["enable", "disable"], p.allowas_in_enable_vpnv6)]]))
    error_message = "Parameter `neighbor.allowas_in_enable_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.allowas_in_enable_evpn == null || contains(["enable", "disable"], p.allowas_in_enable_evpn)]]))
    error_message = "Parameter `neighbor.allowas_in_enable_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.attribute_unchanged6 == null || contains(["as-path", "med", "next-hop"], p.attribute_unchanged6)]]))
    error_message = "Parameter `neighbor.attribute_unchanged6` must be one of `as-path`, `med`, `next-hop`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.attribute_unchanged_vpnv4 == null || contains(["as-path", "med", "next-hop"], p.attribute_unchanged_vpnv4)]]))
    error_message = "Parameter `neighbor.attribute_unchanged_vpnv4` must be one of `as-path`, `med`, `next-hop`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.attribute_unchanged_vpnv6 == null || contains(["as-path", "med", "next-hop"], p.attribute_unchanged_vpnv6)]]))
    error_message = "Parameter `neighbor.attribute_unchanged_vpnv6` must be one of `as-path`, `med`, `next-hop`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.activate == null || contains(["enable", "disable"], p.activate)]]))
    error_message = "Parameter `neighbor.activate` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.activate6 == null || contains(["enable", "disable"], p.activate6)]]))
    error_message = "Parameter `neighbor.activate6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.activate_vpnv4 == null || contains(["enable", "disable"], p.activate_vpnv4)]]))
    error_message = "Parameter `neighbor.activate_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.activate_vpnv6 == null || contains(["enable", "disable"], p.activate_vpnv6)]]))
    error_message = "Parameter `neighbor.activate_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.activate_evpn == null || contains(["enable", "disable"], p.activate_evpn)]]))
    error_message = "Parameter `neighbor.activate_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.bfd == null || contains(["enable", "disable"], p.bfd)]]))
    error_message = "Parameter `neighbor.bfd` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.capability_dynamic == null || contains(["enable", "disable"], p.capability_dynamic)]]))
    error_message = "Parameter `neighbor.capability_dynamic` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.capability_orf == null || contains(["none", "receive", "send", "both"], p.capability_orf)]]))
    error_message = "Parameter `neighbor.capability_orf` must be one of `none`, `receive`, `send`, `both`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.capability_orf6 == null || contains(["none", "receive", "send", "both"], p.capability_orf6)]]))
    error_message = "Parameter `neighbor.capability_orf6` must be one of `none`, `receive`, `send`, `both`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.capability_graceful_restart == null || contains(["enable", "disable"], p.capability_graceful_restart)]]))
    error_message = "Parameter `neighbor.capability_graceful_restart` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.capability_graceful_restart6 == null || contains(["enable", "disable"], p.capability_graceful_restart6)]]))
    error_message = "Parameter `neighbor.capability_graceful_restart6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.capability_graceful_restart_vpnv4 == null || contains(["enable", "disable"], p.capability_graceful_restart_vpnv4)]]))
    error_message = "Parameter `neighbor.capability_graceful_restart_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.capability_graceful_restart_vpnv6 == null || contains(["enable", "disable"], p.capability_graceful_restart_vpnv6)]]))
    error_message = "Parameter `neighbor.capability_graceful_restart_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.capability_graceful_restart_evpn == null || contains(["enable", "disable"], p.capability_graceful_restart_evpn)]]))
    error_message = "Parameter `neighbor.capability_graceful_restart_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.capability_route_refresh == null || contains(["enable", "disable"], p.capability_route_refresh)]]))
    error_message = "Parameter `neighbor.capability_route_refresh` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.capability_default_originate == null || contains(["enable", "disable"], p.capability_default_originate)]]))
    error_message = "Parameter `neighbor.capability_default_originate` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.capability_default_originate6 == null || contains(["enable", "disable"], p.capability_default_originate6)]]))
    error_message = "Parameter `neighbor.capability_default_originate6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.dont_capability_negotiate == null || contains(["enable", "disable"], p.dont_capability_negotiate)]]))
    error_message = "Parameter `neighbor.dont_capability_negotiate` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.ebgp_enforce_multihop == null || contains(["enable", "disable"], p.ebgp_enforce_multihop)]]))
    error_message = "Parameter `neighbor.ebgp_enforce_multihop` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.link_down_failover == null || contains(["enable", "disable"], p.link_down_failover)]]))
    error_message = "Parameter `neighbor.link_down_failover` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.stale_route == null || contains(["enable", "disable"], p.stale_route)]]))
    error_message = "Parameter `neighbor.stale_route` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.next_hop_self == null || contains(["enable", "disable"], p.next_hop_self)]]))
    error_message = "Parameter `neighbor.next_hop_self` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.next_hop_self6 == null || contains(["enable", "disable"], p.next_hop_self6)]]))
    error_message = "Parameter `neighbor.next_hop_self6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.next_hop_self_rr == null || contains(["enable", "disable"], p.next_hop_self_rr)]]))
    error_message = "Parameter `neighbor.next_hop_self_rr` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.next_hop_self_rr6 == null || contains(["enable", "disable"], p.next_hop_self_rr6)]]))
    error_message = "Parameter `neighbor.next_hop_self_rr6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.next_hop_self_vpnv4 == null || contains(["enable", "disable"], p.next_hop_self_vpnv4)]]))
    error_message = "Parameter `neighbor.next_hop_self_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.next_hop_self_vpnv6 == null || contains(["enable", "disable"], p.next_hop_self_vpnv6)]]))
    error_message = "Parameter `neighbor.next_hop_self_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.next_hop_self_rr_vpnv4 == null || contains(["enable", "disable"], p.next_hop_self_rr_vpnv4)]]))
    error_message = "Parameter `neighbor.next_hop_self_rr_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.next_hop_self_rr_vpnv6 == null || contains(["enable", "disable"], p.next_hop_self_rr_vpnv6)]]))
    error_message = "Parameter `neighbor.next_hop_self_rr_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.override_capability == null || contains(["enable", "disable"], p.override_capability)]]))
    error_message = "Parameter `neighbor.override_capability` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.passive == null || contains(["enable", "disable"], p.passive)]]))
    error_message = "Parameter `neighbor.passive` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.remove_private_as == null || contains(["enable", "disable"], p.remove_private_as)]]))
    error_message = "Parameter `neighbor.remove_private_as` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.remove_private_as6 == null || contains(["enable", "disable"], p.remove_private_as6)]]))
    error_message = "Parameter `neighbor.remove_private_as6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.remove_private_as_vpnv4 == null || contains(["enable", "disable"], p.remove_private_as_vpnv4)]]))
    error_message = "Parameter `neighbor.remove_private_as_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.remove_private_as_vpnv6 == null || contains(["enable", "disable"], p.remove_private_as_vpnv6)]]))
    error_message = "Parameter `neighbor.remove_private_as_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.remove_private_as_evpn == null || contains(["enable", "disable"], p.remove_private_as_evpn)]]))
    error_message = "Parameter `neighbor.remove_private_as_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.route_reflector_client == null || contains(["enable", "disable"], p.route_reflector_client)]]))
    error_message = "Parameter `neighbor.route_reflector_client` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.route_reflector_client6 == null || contains(["enable", "disable"], p.route_reflector_client6)]]))
    error_message = "Parameter `neighbor.route_reflector_client6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.route_reflector_client_vpnv4 == null || contains(["enable", "disable"], p.route_reflector_client_vpnv4)]]))
    error_message = "Parameter `neighbor.route_reflector_client_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.route_reflector_client_vpnv6 == null || contains(["enable", "disable"], p.route_reflector_client_vpnv6)]]))
    error_message = "Parameter `neighbor.route_reflector_client_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.route_reflector_client_evpn == null || contains(["enable", "disable"], p.route_reflector_client_evpn)]]))
    error_message = "Parameter `neighbor.route_reflector_client_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.route_server_client == null || contains(["enable", "disable"], p.route_server_client)]]))
    error_message = "Parameter `neighbor.route_server_client` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.route_server_client6 == null || contains(["enable", "disable"], p.route_server_client6)]]))
    error_message = "Parameter `neighbor.route_server_client6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.route_server_client_vpnv4 == null || contains(["enable", "disable"], p.route_server_client_vpnv4)]]))
    error_message = "Parameter `neighbor.route_server_client_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.route_server_client_vpnv6 == null || contains(["enable", "disable"], p.route_server_client_vpnv6)]]))
    error_message = "Parameter `neighbor.route_server_client_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.route_server_client_evpn == null || contains(["enable", "disable"], p.route_server_client_evpn)]]))
    error_message = "Parameter `neighbor.route_server_client_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.rr_attr_allow_change == null || contains(["enable", "disable"], p.rr_attr_allow_change)]]))
    error_message = "Parameter `neighbor.rr_attr_allow_change` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.rr_attr_allow_change6 == null || contains(["enable", "disable"], p.rr_attr_allow_change6)]]))
    error_message = "Parameter `neighbor.rr_attr_allow_change6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.rr_attr_allow_change_vpnv4 == null || contains(["enable", "disable"], p.rr_attr_allow_change_vpnv4)]]))
    error_message = "Parameter `neighbor.rr_attr_allow_change_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.rr_attr_allow_change_vpnv6 == null || contains(["enable", "disable"], p.rr_attr_allow_change_vpnv6)]]))
    error_message = "Parameter `neighbor.rr_attr_allow_change_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.rr_attr_allow_change_evpn == null || contains(["enable", "disable"], p.rr_attr_allow_change_evpn)]]))
    error_message = "Parameter `neighbor.rr_attr_allow_change_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.adv_evpn_route == null || contains(["type2", "type5", "local"], p.adv_evpn_route)]]))
    error_message = "Parameter `neighbor.adv_evpn_route` must be one of `type2`, `type5`, `local`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.soft_reconfiguration == null || contains(["enable", "disable"], p.soft_reconfiguration)]]))
    error_message = "Parameter `neighbor.soft_reconfiguration` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.soft_reconfiguration6 == null || contains(["enable", "disable"], p.soft_reconfiguration6)]]))
    error_message = "Parameter `neighbor.soft_reconfiguration6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.soft_reconfiguration_vpnv4 == null || contains(["enable", "disable"], p.soft_reconfiguration_vpnv4)]]))
    error_message = "Parameter `neighbor.soft_reconfiguration_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.soft_reconfiguration_vpnv6 == null || contains(["enable", "disable"], p.soft_reconfiguration_vpnv6)]]))
    error_message = "Parameter `neighbor.soft_reconfiguration_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.soft_reconfiguration_evpn == null || contains(["enable", "disable"], p.soft_reconfiguration_evpn)]]))
    error_message = "Parameter `neighbor.soft_reconfiguration_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.as_override == null || contains(["enable", "disable"], p.as_override)]]))
    error_message = "Parameter `neighbor.as_override` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.as_override6 == null || contains(["enable", "disable"], p.as_override6)]]))
    error_message = "Parameter `neighbor.as_override6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.strict_capability_match == null || contains(["enable", "disable"], p.strict_capability_match)]]))
    error_message = "Parameter `neighbor.strict_capability_match` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.maximum_prefix_threshold == null || (p.maximum_prefix_threshold >= 1 && p.maximum_prefix_threshold <= 100)]]))
    error_message = "Parameter `neighbor.maximum_prefix_threshold` must be in the range 1-100."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.maximum_prefix_threshold6 == null || (p.maximum_prefix_threshold6 >= 1 && p.maximum_prefix_threshold6 <= 100)]]))
    error_message = "Parameter `neighbor.maximum_prefix_threshold6` must be in the range 1-100."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.maximum_prefix_threshold_vpnv4 == null || (p.maximum_prefix_threshold_vpnv4 >= 1 && p.maximum_prefix_threshold_vpnv4 <= 100)]]))
    error_message = "Parameter `neighbor.maximum_prefix_threshold_vpnv4` must be in the range 1-100."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.maximum_prefix_threshold_vpnv6 == null || (p.maximum_prefix_threshold_vpnv6 >= 1 && p.maximum_prefix_threshold_vpnv6 <= 100)]]))
    error_message = "Parameter `neighbor.maximum_prefix_threshold_vpnv6` must be in the range 1-100."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.maximum_prefix_threshold_evpn == null || (p.maximum_prefix_threshold_evpn >= 1 && p.maximum_prefix_threshold_evpn <= 100)]]))
    error_message = "Parameter `neighbor.maximum_prefix_threshold_evpn` must be in the range 1-100."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.maximum_prefix_warning_only == null || contains(["enable", "disable"], p.maximum_prefix_warning_only)]]))
    error_message = "Parameter `neighbor.maximum_prefix_warning_only` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.maximum_prefix_warning_only6 == null || contains(["enable", "disable"], p.maximum_prefix_warning_only6)]]))
    error_message = "Parameter `neighbor.maximum_prefix_warning_only6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.maximum_prefix_warning_only_vpnv4 == null || contains(["enable", "disable"], p.maximum_prefix_warning_only_vpnv4)]]))
    error_message = "Parameter `neighbor.maximum_prefix_warning_only_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.maximum_prefix_warning_only_vpnv6 == null || contains(["enable", "disable"], p.maximum_prefix_warning_only_vpnv6)]]))
    error_message = "Parameter `neighbor.maximum_prefix_warning_only_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.maximum_prefix_warning_only_evpn == null || contains(["enable", "disable"], p.maximum_prefix_warning_only_evpn)]]))
    error_message = "Parameter `neighbor.maximum_prefix_warning_only_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.local_as_no_prepend == null || contains(["enable", "disable"], p.local_as_no_prepend)]]))
    error_message = "Parameter `neighbor.local_as_no_prepend` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.local_as_replace_as == null || contains(["enable", "disable"], p.local_as_replace_as)]]))
    error_message = "Parameter `neighbor.local_as_replace_as` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.send_community == null || contains(["standard", "extended", "both", "disable"], p.send_community)]]))
    error_message = "Parameter `neighbor.send_community` must be one of `standard`, `extended`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.send_community6 == null || contains(["standard", "extended", "both", "disable"], p.send_community6)]]))
    error_message = "Parameter `neighbor.send_community6` must be one of `standard`, `extended`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.send_community_vpnv4 == null || contains(["standard", "extended", "both", "disable"], p.send_community_vpnv4)]]))
    error_message = "Parameter `neighbor.send_community_vpnv4` must be one of `standard`, `extended`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.send_community_vpnv6 == null || contains(["standard", "extended", "both", "disable"], p.send_community_vpnv6)]]))
    error_message = "Parameter `neighbor.send_community_vpnv6` must be one of `standard`, `extended`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.send_community_evpn == null || contains(["standard", "extended", "both", "disable"], p.send_community_evpn)]]))
    error_message = "Parameter `neighbor.send_community_evpn` must be one of `standard`, `extended`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.enforce_preferred_source == null || contains(["enable", "disable"], p.enforce_preferred_source)]]))
    error_message = "Parameter `neighbor.enforce_preferred_source` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.additional_path == null || contains(["send", "receive", "both", "disable"], p.additional_path)]]))
    error_message = "Parameter `neighbor.additional_path` must be one of `send`, `receive`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.additional_path6 == null || contains(["send", "receive", "both", "disable"], p.additional_path6)]]))
    error_message = "Parameter `neighbor.additional_path6` must be one of `send`, `receive`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.additional_path_vpnv4 == null || contains(["send", "receive", "both", "disable"], p.additional_path_vpnv4)]]))
    error_message = "Parameter `neighbor.additional_path_vpnv4` must be one of `send`, `receive`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.additional_path_vpnv6 == null || contains(["send", "receive", "both", "disable"], p.additional_path_vpnv6)]]))
    error_message = "Parameter `neighbor.additional_path_vpnv6` must be one of `send`, `receive`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : [for q in p.conditional_advertise : q.condition_type == null || contains(["exist", "non-exist"], q.condition_type)]]]))
    error_message = "Parameter `neighbor.conditional_advertise.condition_type` must be one of `exist`, `non-exist`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : [for q in p.conditional_advertise6 : q.condition_type == null || contains(["exist", "non-exist"], q.condition_type)]]]))
    error_message = "Parameter `neighbor.conditional_advertise6.condition_type` must be one of `exist`, `non-exist`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor : p.use_sdwan == null || contains(["enable", "disable"], p.use_sdwan)]]))
    error_message = "Parameter `neighbor.use_sdwan` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.allowas_in_enable == null || contains(["enable", "disable"], p.allowas_in_enable)]]))
    error_message = "Parameter `neighbor_group.allowas_in_enable` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.allowas_in_enable6 == null || contains(["enable", "disable"], p.allowas_in_enable6)]]))
    error_message = "Parameter `neighbor_group.allowas_in_enable6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.allowas_in_enable_vpnv4 == null || contains(["enable", "disable"], p.allowas_in_enable_vpnv4)]]))
    error_message = "Parameter `neighbor_group.allowas_in_enable_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.allowas_in_enable_vpnv6 == null || contains(["enable", "disable"], p.allowas_in_enable_vpnv6)]]))
    error_message = "Parameter `neighbor_group.allowas_in_enable_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.allowas_in_enable_evpn == null || contains(["enable", "disable"], p.allowas_in_enable_evpn)]]))
    error_message = "Parameter `neighbor_group.allowas_in_enable_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.attribute_unchanged == null || contains(["as-path", "med", "next-hop"], p.attribute_unchanged)]]))
    error_message = "Parameter `neighbor_group.attribute_unchanged` must be one of `as-path`, `med`, `next-hop`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.attribute_unchanged6 == null || contains(["as-path", "med", "next-hop"], p.attribute_unchanged6)]]))
    error_message = "Parameter `neighbor_group.attribute_unchanged6` must be one of `as-path`, `med`, `next-hop`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.attribute_unchanged_vpnv4 == null || contains(["as-path", "med", "next-hop"], p.attribute_unchanged_vpnv4)]]))
    error_message = "Parameter `neighbor_group.attribute_unchanged_vpnv4` must be one of `as-path`, `med`, `next-hop`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.attribute_unchanged_vpnv6 == null || contains(["as-path", "med", "next-hop"], p.attribute_unchanged_vpnv6)]]))
    error_message = "Parameter `neighbor_group.attribute_unchanged_vpnv6` must be one of `as-path`, `med`, `next-hop`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.activate == null || contains(["enable", "disable"], p.activate)]]))
    error_message = "Parameter `neighbor_group.activate` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.activate6 == null || contains(["enable", "disable"], p.activate6)]]))
    error_message = "Parameter `neighbor_group.activate6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.activate_vpnv4 == null || contains(["enable", "disable"], p.activate_vpnv4)]]))
    error_message = "Parameter `neighbor_group.activate_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.activate_vpnv6 == null || contains(["enable", "disable"], p.activate_vpnv6)]]))
    error_message = "Parameter `neighbor_group.activate_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.activate_evpn == null || contains(["enable", "disable"], p.activate_evpn)]]))
    error_message = "Parameter `neighbor_group.activate_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.bfd == null || contains(["enable", "disable"], p.bfd)]]))
    error_message = "Parameter `neighbor_group.bfd` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.capability_dynamic == null || contains(["enable", "disable"], p.capability_dynamic)]]))
    error_message = "Parameter `neighbor_group.capability_dynamic` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.capability_orf == null || contains(["none", "receive", "send", "both"], p.capability_orf)]]))
    error_message = "Parameter `neighbor_group.capability_orf` must be one of `none`, `receive`, `send`, `both`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.capability_orf6 == null || contains(["none", "receive", "send", "both"], p.capability_orf6)]]))
    error_message = "Parameter `neighbor_group.capability_orf6` must be one of `none`, `receive`, `send`, `both`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.capability_graceful_restart == null || contains(["enable", "disable"], p.capability_graceful_restart)]]))
    error_message = "Parameter `neighbor_group.capability_graceful_restart` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.capability_graceful_restart6 == null || contains(["enable", "disable"], p.capability_graceful_restart6)]]))
    error_message = "Parameter `neighbor_group.capability_graceful_restart6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.capability_graceful_restart_vpnv4 == null || contains(["enable", "disable"], p.capability_graceful_restart_vpnv4)]]))
    error_message = "Parameter `neighbor_group.capability_graceful_restart_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.capability_graceful_restart_vpnv6 == null || contains(["enable", "disable"], p.capability_graceful_restart_vpnv6)]]))
    error_message = "Parameter `neighbor_group.capability_graceful_restart_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.capability_graceful_restart_evpn == null || contains(["enable", "disable"], p.capability_graceful_restart_evpn)]]))
    error_message = "Parameter `neighbor_group.capability_graceful_restart_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.capability_route_refresh == null || contains(["enable", "disable"], p.capability_route_refresh)]]))
    error_message = "Parameter `neighbor_group.capability_route_refresh` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.capability_default_originate == null || contains(["enable", "disable"], p.capability_default_originate)]]))
    error_message = "Parameter `neighbor_group.capability_default_originate` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.capability_default_originate6 == null || contains(["enable", "disable"], p.capability_default_originate6)]]))
    error_message = "Parameter `neighbor_group.capability_default_originate6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.dont_capability_negotiate == null || contains(["enable", "disable"], p.dont_capability_negotiate)]]))
    error_message = "Parameter `neighbor_group.dont_capability_negotiate` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.ebgp_enforce_multihop == null || contains(["enable", "disable"], p.ebgp_enforce_multihop)]]))
    error_message = "Parameter `neighbor_group.ebgp_enforce_multihop` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.link_down_failover == null || contains(["enable", "disable"], p.link_down_failover)]]))
    error_message = "Parameter `neighbor_group.link_down_failover` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.stale_route == null || contains(["enable", "disable"], p.stale_route)]]))
    error_message = "Parameter `neighbor_group.stale_route` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.next_hop_self == null || contains(["enable", "disable"], p.next_hop_self)]]))
    error_message = "Parameter `neighbor_group.next_hop_self` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.next_hop_self6 == null || contains(["enable", "disable"], p.next_hop_self6)]]))
    error_message = "Parameter `neighbor_group.next_hop_self6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.next_hop_self_rr == null || contains(["enable", "disable"], p.next_hop_self_rr)]]))
    error_message = "Parameter `neighbor_group.next_hop_self_rr` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.next_hop_self_rr6 == null || contains(["enable", "disable"], p.next_hop_self_rr6)]]))
    error_message = "Parameter `neighbor_group.next_hop_self_rr6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.next_hop_self_vpnv4 == null || contains(["enable", "disable"], p.next_hop_self_vpnv4)]]))
    error_message = "Parameter `neighbor_group.next_hop_self_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.next_hop_self_vpnv6 == null || contains(["enable", "disable"], p.next_hop_self_vpnv6)]]))
    error_message = "Parameter `neighbor_group.next_hop_self_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.next_hop_self_rr_vpnv4 == null || contains(["enable", "disable"], p.next_hop_self_rr_vpnv4)]]))
    error_message = "Parameter `neighbor_group.next_hop_self_rr_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.next_hop_self_rr_vpnv6 == null || contains(["enable", "disable"], p.next_hop_self_rr_vpnv6)]]))
    error_message = "Parameter `neighbor_group.next_hop_self_rr_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.override_capability == null || contains(["enable", "disable"], p.override_capability)]]))
    error_message = "Parameter `neighbor_group.override_capability` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.passive == null || contains(["enable", "disable"], p.passive)]]))
    error_message = "Parameter `neighbor_group.passive` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.remove_private_as == null || contains(["enable", "disable"], p.remove_private_as)]]))
    error_message = "Parameter `neighbor_group.remove_private_as` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.remove_private_as6 == null || contains(["enable", "disable"], p.remove_private_as6)]]))
    error_message = "Parameter `neighbor_group.remove_private_as6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.remove_private_as_vpnv4 == null || contains(["enable", "disable"], p.remove_private_as_vpnv4)]]))
    error_message = "Parameter `neighbor_group.remove_private_as_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.remove_private_as_vpnv6 == null || contains(["enable", "disable"], p.remove_private_as_vpnv6)]]))
    error_message = "Parameter `neighbor_group.remove_private_as_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.remove_private_as_evpn == null || contains(["enable", "disable"], p.remove_private_as_evpn)]]))
    error_message = "Parameter `neighbor_group.remove_private_as_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.route_reflector_client == null || contains(["enable", "disable"], p.route_reflector_client)]]))
    error_message = "Parameter `neighbor_group.route_reflector_client` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.route_reflector_client6 == null || contains(["enable", "disable"], p.route_reflector_client6)]]))
    error_message = "Parameter `neighbor_group.route_reflector_client6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.route_reflector_client_vpnv4 == null || contains(["enable", "disable"], p.route_reflector_client_vpnv4)]]))
    error_message = "Parameter `neighbor_group.route_reflector_client_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.route_reflector_client_vpnv6 == null || contains(["enable", "disable"], p.route_reflector_client_vpnv6)]]))
    error_message = "Parameter `neighbor_group.route_reflector_client_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.route_reflector_client_evpn == null || contains(["enable", "disable"], p.route_reflector_client_evpn)]]))
    error_message = "Parameter `neighbor_group.route_reflector_client_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.route_server_client == null || contains(["enable", "disable"], p.route_server_client)]]))
    error_message = "Parameter `neighbor_group.route_server_client` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.route_server_client6 == null || contains(["enable", "disable"], p.route_server_client6)]]))
    error_message = "Parameter `neighbor_group.route_server_client6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.route_server_client_vpnv4 == null || contains(["enable", "disable"], p.route_server_client_vpnv4)]]))
    error_message = "Parameter `neighbor_group.route_server_client_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.route_server_client_vpnv6 == null || contains(["enable", "disable"], p.route_server_client_vpnv6)]]))
    error_message = "Parameter `neighbor_group.route_server_client_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.route_server_client_evpn == null || contains(["enable", "disable"], p.route_server_client_evpn)]]))
    error_message = "Parameter `neighbor_group.route_server_client_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.rr_attr_allow_change == null || contains(["enable", "disable"], p.rr_attr_allow_change)]]))
    error_message = "Parameter `neighbor_group.rr_attr_allow_change` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.rr_attr_allow_change6 == null || contains(["enable", "disable"], p.rr_attr_allow_change6)]]))
    error_message = "Parameter `neighbor_group.rr_attr_allow_change6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.rr_attr_allow_change_vpnv4 == null || contains(["enable", "disable"], p.rr_attr_allow_change_vpnv4)]]))
    error_message = "Parameter `neighbor_group.rr_attr_allow_change_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.rr_attr_allow_change_vpnv6 == null || contains(["enable", "disable"], p.rr_attr_allow_change_vpnv6)]]))
    error_message = "Parameter `neighbor_group.rr_attr_allow_change_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.rr_attr_allow_change_evpn == null || contains(["enable", "disable"], p.rr_attr_allow_change_evpn)]]))
    error_message = "Parameter `neighbor_group.rr_attr_allow_change_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.soft_reconfiguration == null || contains(["enable", "disable"], p.soft_reconfiguration)]]))
    error_message = "Parameter `neighbor_group.soft_reconfiguration` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.soft_reconfiguration6 == null || contains(["enable", "disable"], p.soft_reconfiguration6)]]))
    error_message = "Parameter `neighbor_group.soft_reconfiguration6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.soft_reconfiguration_vpnv4 == null || contains(["enable", "disable"], p.soft_reconfiguration_vpnv4)]]))
    error_message = "Parameter `neighbor_group.soft_reconfiguration_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.soft_reconfiguration_vpnv6 == null || contains(["enable", "disable"], p.soft_reconfiguration_vpnv6)]]))
    error_message = "Parameter `neighbor_group.soft_reconfiguration_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.soft_reconfiguration_evpn == null || contains(["enable", "disable"], p.soft_reconfiguration_evpn)]]))
    error_message = "Parameter `neighbor_group.soft_reconfiguration_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.as_override == null || contains(["enable", "disable"], p.as_override)]]))
    error_message = "Parameter `neighbor_group.as_override` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.as_override6 == null || contains(["enable", "disable"], p.as_override6)]]))
    error_message = "Parameter `neighbor_group.as_override6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.strict_capability_match == null || contains(["enable", "disable"], p.strict_capability_match)]]))
    error_message = "Parameter `neighbor_group.strict_capability_match` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.maximum_prefix_threshold == null || (p.maximum_prefix_threshold >= 1 && p.maximum_prefix_threshold <= 100)]]))
    error_message = "Parameter `neighbor_group.maximum_prefix_threshold` must be in the range 1-100."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.maximum_prefix_threshold6 == null || (p.maximum_prefix_threshold6 >= 1 && p.maximum_prefix_threshold6 <= 100)]]))
    error_message = "Parameter `neighbor_group.maximum_prefix_threshold6` must be in the range 1-100."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.maximum_prefix_threshold_vpnv4 == null || (p.maximum_prefix_threshold_vpnv4 >= 1 && p.maximum_prefix_threshold_vpnv4 <= 100)]]))
    error_message = "Parameter `neighbor_group.maximum_prefix_threshold_vpnv4` must be in the range 1-100."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.maximum_prefix_threshold_vpnv6 == null || (p.maximum_prefix_threshold_vpnv6 >= 1 && p.maximum_prefix_threshold_vpnv6 <= 100)]]))
    error_message = "Parameter `neighbor_group.maximum_prefix_threshold_vpnv6` must be in the range 1-100."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.maximum_prefix_threshold_evpn == null || (p.maximum_prefix_threshold_evpn >= 1 && p.maximum_prefix_threshold_evpn <= 100)]]))
    error_message = "Parameter `neighbor_group.maximum_prefix_threshold_evpn` must be in the range 1-100."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.maximum_prefix_warning_only == null || contains(["enable", "disable"], p.maximum_prefix_warning_only)]]))
    error_message = "Parameter `neighbor_group.maximum_prefix_warning_only` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.maximum_prefix_warning_only6 == null || contains(["enable", "disable"], p.maximum_prefix_warning_only6)]]))
    error_message = "Parameter `neighbor_group.maximum_prefix_warning_only6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.maximum_prefix_warning_only_vpnv4 == null || contains(["enable", "disable"], p.maximum_prefix_warning_only_vpnv4)]]))
    error_message = "Parameter `neighbor_group.maximum_prefix_warning_only_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.maximum_prefix_warning_only_vpnv6 == null || contains(["enable", "disable"], p.maximum_prefix_warning_only_vpnv6)]]))
    error_message = "Parameter `neighbor_group.maximum_prefix_warning_only_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.maximum_prefix_warning_only_evpn == null || contains(["enable", "disable"], p.maximum_prefix_warning_only_evpn)]]))
    error_message = "Parameter `neighbor_group.maximum_prefix_warning_only_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.local_as_no_prepend == null || contains(["enable", "disable"], p.local_as_no_prepend)]]))
    error_message = "Parameter `neighbor_group.local_as_no_prepend` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.local_as_replace_as == null || contains(["enable", "disable"], p.local_as_replace_as)]]))
    error_message = "Parameter `neighbor_group.local_as_replace_as` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.send_community == null || contains(["standard", "extended", "both", "disable"], p.send_community)]]))
    error_message = "Parameter `neighbor_group.send_community` must be one of `standard`, `extended`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.send_community6 == null || contains(["standard", "extended", "both", "disable"], p.send_community6)]]))
    error_message = "Parameter `neighbor_group.send_community6` must be one of `standard`, `extended`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.send_community_vpnv4 == null || contains(["standard", "extended", "both", "disable"], p.send_community_vpnv4)]]))
    error_message = "Parameter `neighbor_group.send_community_vpnv4` must be one of `standard`, `extended`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.send_community_vpnv6 == null || contains(["standard", "extended", "both", "disable"], p.send_community_vpnv6)]]))
    error_message = "Parameter `neighbor_group.send_community_vpnv6` must be one of `standard`, `extended`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.send_community_evpn == null || contains(["standard", "extended", "both", "disable"], p.send_community_evpn)]]))
    error_message = "Parameter `neighbor_group.send_community_evpn` must be one of `standard`, `extended`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.enforce_preferred_source == null || contains(["enable", "disable"], p.enforce_preferred_source)]]))
    error_message = "Parameter `neighbor_group.enforce_preferred_source` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.additional_path == null || contains(["send", "receive", "both", "disable"], p.additional_path)]]))
    error_message = "Parameter `neighbor_group.additional_path` must be one of `send`, `receive`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.additional_path6 == null || contains(["send", "receive", "both", "disable"], p.additional_path6)]]))
    error_message = "Parameter `neighbor_group.additional_path6` must be one of `send`, `receive`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.additional_path_vpnv4 == null || contains(["send", "receive", "both", "disable"], p.additional_path_vpnv4)]]))
    error_message = "Parameter `neighbor_group.additional_path_vpnv4` must be one of `send`, `receive`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.neighbor_group : p.additional_path_vpnv6 == null || contains(["send", "receive", "both", "disable"], p.additional_path_vpnv6)]]))
    error_message = "Parameter `neighbor_group.additional_path_vpnv6` must be one of `send`, `receive`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.network : p.network_import_check == null || contains(["global", "enable", "disable"], p.network_import_check)]]))
    error_message = "Parameter `network.network_import_check` must be one of `global`, `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.network : p.backdoor == null || contains(["enable", "disable"], p.backdoor)]]))
    error_message = "Parameter `network.backdoor` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.network6 : p.network_import_check == null || contains(["global", "enable", "disable"], p.network_import_check)]]))
    error_message = "Parameter `network6.network_import_check` must be one of `global`, `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.network6 : p.backdoor == null || contains(["enable", "disable"], p.backdoor)]]))
    error_message = "Parameter `network6.backdoor` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.redistribute : p.status == null || contains(["enable", "disable"], p.status)]]))
    error_message = "Parameter `redistribute.status` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.redistribute : p.status_evpn == null || contains(["enable", "disable"], p.status_evpn)]]))
    error_message = "Parameter `redistribute.status_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.redistribute6 : p.status == null || contains(["enable", "disable"], p.status)]]))
    error_message = "Parameter `redistribute6.status` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.admin_distance : p.distance == null || (p.distance >= 1 && p.distance <= 255)]]))
    error_message = "Parameter `admin_distance.distance` must be in the range 1-255."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.vrf : p.vrf == null || (p.vrf >= 0 && p.vrf <= 511)]]))
    error_message = "Parameter `vrf.vrf` must be in the range 0-511."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.vrf : [for q in p.leak_target : q.vrf == null || (q.vrf >= 0 && q.vrf <= 511)]]]))
    error_message = "Parameter `vrf.leak_target.vrf` must be in the range 0-511."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.vrf6 : [for q in p.leak_target : q.vrf == null || (q.vrf >= 0 && q.vrf <= 511)]]]))
    error_message = "Parameter `vrf6.leak_target.vrf` must be in the range 0-511."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.vrf_leak : p.vrf == null || (p.vrf >= 0 && p.vrf <= 31)]]))
    error_message = "Parameter `vrf_leak.vrf` must be in the range 0-31."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.vrf_leak : [for q in p.target : q.vrf == null || (q.vrf >= 0 && q.vrf <= 31)]]]))
    error_message = "Parameter `vrf_leak.target.vrf` must be in the range 0-31."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.vrf_leak6 : p.vrf == null || (p.vrf >= 0 && p.vrf <= 31)]]))
    error_message = "Parameter `vrf_leak6.vrf` must be in the range 0-31."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routerbgp : [for p in o.vrf_leak6 : [for q in p.target : q.vrf == null || (q.vrf >= 0 && q.vrf <= 31)]]]))
    error_message = "Parameter `vrf_leak6.target.vrf` must be in the range 0-31."
  }
}

variable "neighbor" {
  description = "BGP Peer"
  default     = []

  type = list(object({
    ip                                 = string
    name                               = optional(string)
    advertisement_interval             = optional(number)
    allowas_in_enable                  = optional(string)
    allowas_in_enable6                 = optional(string)
    allowas_in_enable_vpnv4            = optional(string)
    allowas_in_enable_vpnv6            = optional(string)
    allowas_in_enable_evpn             = optional(string)
    allowas_in                         = optional(string)
    allowas_in6                        = optional(string)
    allowas_in_vpnv4                   = optional(number)
    allowas_in_vpnv6                   = optional(number)
    allowas_in_evpn                    = optional(number)
    attribute_unchanged                = optional(string)
    attribute_unchanged6               = optional(string)
    attribute_unchanged_vpnv4          = optional(string)
    attribute_unchanged_vpnv6          = optional(string)
    activate                           = optional(string)
    activate6                          = optional(string)
    activate_vpnv4                     = optional(string)
    activate_vpnv6                     = optional(string)
    activate_evpn                      = optional(string)
    bfd                                = optional(string)
    capability_dynamic                 = optional(string)
    capability_orf                     = optional(string)
    capability_orf6                    = optional(string)
    capability_graceful_restart        = optional(string)
    capability_graceful_restart6       = optional(string)
    capability_graceful_restart_vpnv4  = optional(string)
    capability_graceful_restart_vpnv6  = optional(string)
    capability_graceful_restart_evpn   = optional(string)
    capability_route_refresh           = optional(string)
    capability_default_originate       = optional(string)
    capability_default_originate6      = optional(string)
    dont_capability_negotiate          = optional(string)
    ebgp_enforce_multihop              = optional(string)
    link_down_failover                 = optional(string)
    stale_route                        = optional(string)
    next_hop_self                      = optional(string)
    next_hop_self6                     = optional(string)
    next_hop_self_rr                   = optional(string)
    next_hop_self_rr6                  = optional(string)
    next_hop_self_vpnv4                = optional(string)
    next_hop_self_vpnv6                = optional(string)
    next_hop_self_rr_vpnv4             = optional(string)
    next_hop_self_rr_vpnv6             = optional(string)
    override_capability                = optional(string)
    passive                            = optional(string)
    remove_private_as                  = optional(string)
    remove_private_as6                 = optional(string)
    remove_private_as_vpnv4            = optional(string)
    remove_private_as_vpnv6            = optional(string)
    remove_private_as_evpn             = optional(string)
    route_reflector_client             = optional(string)
    route_reflector_client6            = optional(string)
    route_reflector_client_vpnv4       = optional(string)
    route_reflector_client_vpnv6       = optional(string)
    route_reflector_client_evpn        = optional(string)
    route_server_client                = optional(string)
    route_server_client6               = optional(string)
    route_server_client_vpnv4          = optional(string)
    route_server_client_vpnv6          = optional(string)
    route_server_client_evpn           = optional(string)
    rr_attr_allow_change               = optional(string)
    rr_attr_allow_change6              = optional(string)
    rr_attr_allow_change_vpnv4         = optional(string)
    rr_attr_allow_change_vpnv6         = optional(string)
    rr_attr_allow_change_evpn          = optional(string)
    adv_evpn_route                     = optional(string)
    shutdown                           = optional(string)
    soft_reconfiguration               = optional(string)
    soft_reconfiguration6              = optional(string)
    soft_reconfiguration_vpnv4         = optional(string)
    soft_reconfiguration_vpnv6         = optional(string)
    soft_reconfiguration_evpn          = optional(string)
    as_override                        = optional(string)
    as_override6                       = optional(string)
    strict_capability_match            = optional(string)
    default_originate_routemap         = optional(string)
    default_originate_routemap6        = optional(string)
    description                        = optional(string)
    distribute_list_in                 = optional(string)
    distribute_list_in6                = optional(string)
    distribute_list_in_vpnv4           = optional(string)
    distribute_list_in_vpnv6           = optional(string)
    distribute_list_out                = optional(string)
    distribute_list_out6               = optional(string)
    distribute_list_out_vpnv4          = optional(string)
    distribute_list_out_vpnv6          = optional(string)
    ebgp_multihop_ttl                  = optional(number)
    filter_list_in                     = optional(string)
    filter_list_in6                    = optional(string)
    filter_list_in_vpnv4               = optional(string)
    filter_list_in_vpnv6               = optional(string)
    filter_list_out                    = optional(string)
    filter_list_out6                   = optional(string)
    filter_list_out_vpnv4              = optional(string)
    filter_list_out_vpnv6              = optional(string)
    interface                          = optional(string)
    maximum_prefix                     = optional(number)
    maximum_prefix6                    = optional(number)
    maximum_prefix_vpnv4               = optional(number)
    maximum_prefix_vpnv6               = optional(number)
    maximum_prefix_evpn                = optional(number)
    maximum_prefix_threshold           = optional(number)
    maximum_prefix_threshold6          = optional(number)
    maximum_prefix_threshold_vpnv4     = optional(number)
    maximum_prefix_threshold_vpnv6     = optional(number)
    maximum_prefix_threshold_evpn      = optional(number)
    maximum_prefix_warning_only        = optional(string)
    maximum_prefix_warning_only6       = optional(string)
    maximum_prefix_warning_only_vpnv4  = optional(string)
    maximum_prefix_warning_only_vpnv6  = optional(string)
    maximum_prefix_warning_only_evpn   = optional(string)
    prefix_list_in                     = optional(string)
    prefix_list_in6                    = optional(string)
    prefix_list_in_vpnv4               = optional(string)
    prefix_list_in_vpnv6               = optional(string)
    prefix_list_out                    = optional(string)
    prefix_list_out6                   = optional(string)
    prefix_list_out_vpnv4              = optional(string)
    prefix_list_out_vpnv6              = optional(string)
    remote_as                          = optional(number)
    local_as                           = optional(number)
    local_as_no_prepend                = optional(string)
    local_as_replace_as                = optional(string)
    retain_stale_time                  = optional(number)
    route_map_in                       = optional(string)
    route_map_in6                      = optional(string)
    route_map_in_vpnv4                 = optional(string)
    route_map_in_vpnv6                 = optional(string)
    route_map_in_evpn                  = optional(string)
    route_map_out                      = optional(string)
    route_map_out_preferable           = optional(string)
    route_map_out6                     = optional(string)
    route_map_out6_preferable          = optional(string)
    route_map_out_vpnv4                = optional(string)
    route_map_out_vpnv6                = optional(string)
    route_map_out_vpnv4_preferable     = optional(string)
    route_map_out_vpnv6_preferable     = optional(string)
    route_map_out_evpn                 = optional(string)
    send_community                     = optional(string)
    send_community6                    = optional(string)
    send_community_vpnv4               = optional(string)
    send_community_vpnv6               = optional(string)
    send_community_evpn                = optional(string)
    keep_alive_timer                   = optional(number)
    holdtime_timer                     = optional(number)
    connect_timer                      = optional(number)
    unsuppress_map                     = optional(string)
    unsuppress_map6                    = optional(string)
    update_source                      = optional(string)
    enforce_preferred_source           = optional(string)
    weight                             = optional(number)
    restart_time                       = optional(number)
    additional_path                    = optional(string)
    additional_path6                   = optional(string)
    additional_path_vpnv4              = optional(string)
    additional_path_vpnv6              = optional(string)
    adv_additional_path                = optional(string)
    adv_additional_path6               = optional(string)
    adv_additional_path_vpnv4          = optional(string)
    adv_additional_path_vpnv6          = optional(string)
    password                           = optional(string)
    auth_options                       = optional(string)
    conditional_advertise              = optional(list(string), [])
    conditional_advertise6             = optional(list(string), [])
    graceful_shutdown_community        = optional(string)
    graceful_shutdown_local_preference = optional(string)
    graceful_shutdown_delay            = optional(number)
    use_sdwan                          = optional(string)
    dynamic_sort_subtable              = optional(string, "natural")
    get_all_tables                     = optional(bool, false)
    vdomparam                          = optional(string)
    update_if_exist                    = optional(bool)
  }))

  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.allowas_in_enable == null || contains(["enable", "disable"], o.allowas_in_enable)]))
    error_message = "Parameter `allowas_in_enable` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.allowas_in_enable6 == null || contains(["enable", "disable"], o.allowas_in_enable6)]))
    error_message = "Parameter `allowas_in_enable6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.allowas_in_enable_vpnv4 == null || contains(["enable", "disable"], o.allowas_in_enable_vpnv4)]))
    error_message = "Parameter `allowas_in_enable_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.allowas_in_enable_vpnv6 == null || contains(["enable", "disable"], o.allowas_in_enable_vpnv6)]))
    error_message = "Parameter `allowas_in_enable_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.allowas_in_enable_evpn == null || contains(["enable", "disable"], o.allowas_in_enable_evpn)]))
    error_message = "Parameter `allowas_in_enable_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.attribute_unchanged == null || contains(["as-path", "med", "next-hop"], o.attribute_unchanged)]))
    error_message = "Parameter `attribute_unchanged` must be one of `as-path`, `med`, `next-hop`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.attribute_unchanged6 == null || contains(["as-path", "med", "next-hop"], o.attribute_unchanged6)]))
    error_message = "Parameter `attribute_unchanged6` must be one of `as-path`, `med`, `next-hop`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.attribute_unchanged_vpnv4 == null || contains(["as-path", "med", "next-hop"], o.attribute_unchanged_vpnv4)]))
    error_message = "Parameter `attribute_unchanged_vpnv4` must be one of `as-path`, `med`, `next-hop`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.attribute_unchanged_vpnv6 == null || contains(["as-path", "med", "next-hop"], o.attribute_unchanged_vpnv6)]))
    error_message = "Parameter `attribute_unchanged_vpnv6` must be one of `as-path`, `med`, `next-hop`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.activate == null || contains(["enable", "disable"], o.activate)]))
    error_message = "Parameter `activate` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.activate6 == null || contains(["enable", "disable"], o.activate6)]))
    error_message = "Parameter `activate6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.activate_vpnv4 == null || contains(["enable", "disable"], o.activate_vpnv4)]))
    error_message = "Parameter `activate_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.activate_vpnv6 == null || contains(["enable", "disable"], o.activate_vpnv6)]))
    error_message = "Parameter `activate_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.activate_evpn == null || contains(["enable", "disable"], o.activate_evpn)]))
    error_message = "Parameter `activate_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.bfd == null || contains(["enable", "disable"], o.bfd)]))
    error_message = "Parameter `bfd` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.capability_dynamic == null || contains(["enable", "disable"], o.capability_dynamic)]))
    error_message = "Parameter `capability_dynamic` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.capability_orf == null || contains(["none", "receive", "send", "both"], o.capability_orf)]))
    error_message = "Parameter `capability_orf` must be one of `none`, `receive`, `send`, `both`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.capability_orf6 == null || contains(["none", "receive", "send", "both"], o.capability_orf6)]))
    error_message = "Parameter `capability_orf6` must be one of `none`, `receive`, `send`, `both`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.capability_graceful_restart == null || contains(["enable", "disable"], o.capability_graceful_restart)]))
    error_message = "Parameter `capability_graceful_restart` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.capability_graceful_restart6 == null || contains(["enable", "disable"], o.capability_graceful_restart6)]))
    error_message = "Parameter `capability_graceful_restart6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.capability_graceful_restart_vpnv4 == null || contains(["enable", "disable"], o.capability_graceful_restart_vpnv4)]))
    error_message = "Parameter `capability_graceful_restart_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.capability_graceful_restart_vpnv6 == null || contains(["enable", "disable"], o.capability_graceful_restart_vpnv6)]))
    error_message = "Parameter `capability_graceful_restart_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.capability_graceful_restart_evpn == null || contains(["enable", "disable"], o.capability_graceful_restart_evpn)]))
    error_message = "Parameter `capability_graceful_restart_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.capability_route_refresh == null || contains(["enable", "disable"], o.capability_route_refresh)]))
    error_message = "Parameter `capability_route_refresh` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.capability_default_originate == null || contains(["enable", "disable"], o.capability_default_originate)]))
    error_message = "Parameter `capability_default_originate` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.capability_default_originate6 == null || contains(["enable", "disable"], o.capability_default_originate6)]))
    error_message = "Parameter `capability_default_originate6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.dont_capability_negotiate == null || contains(["enable", "disable"], o.dont_capability_negotiate)]))
    error_message = "Parameter `dont_capability_negotiate` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.ebgp_enforce_multihop == null || contains(["enable", "disable"], o.ebgp_enforce_multihop)]))
    error_message = "Parameter `ebgp_enforce_multihop` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.link_down_failover == null || contains(["enable", "disable"], o.link_down_failover)]))
    error_message = "Parameter `link_down_failover` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.stale_route == null || contains(["enable", "disable"], o.stale_route)]))
    error_message = "Parameter `stale_route` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.next_hop_self == null || contains(["enable", "disable"], o.next_hop_self)]))
    error_message = "Parameter `next_hop_self` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.next_hop_self6 == null || contains(["enable", "disable"], o.next_hop_self6)]))
    error_message = "Parameter `next_hop_self6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.next_hop_self_rr == null || contains(["enable", "disable"], o.next_hop_self_rr)]))
    error_message = "Parameter `next_hop_self_rr` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.next_hop_self_rr6 == null || contains(["enable", "disable"], o.next_hop_self_rr6)]))
    error_message = "Parameter `next_hop_self_rr6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.next_hop_self_vpnv4 == null || contains(["enable", "disable"], o.next_hop_self_vpnv4)]))
    error_message = "Parameter `next_hop_self_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.next_hop_self_vpnv6 == null || contains(["enable", "disable"], o.next_hop_self_vpnv6)]))
    error_message = "Parameter `next_hop_self_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.next_hop_self_rr_vpnv4 == null || contains(["enable", "disable"], o.next_hop_self_rr_vpnv4)]))
    error_message = "Parameter `next_hop_self_rr_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.next_hop_self_rr_vpnv6 == null || contains(["enable", "disable"], o.next_hop_self_rr_vpnv6)]))
    error_message = "Parameter `next_hop_self_rr_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.override_capability == null || contains(["enable", "disable"], o.override_capability)]))
    error_message = "Parameter `override_capability` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.passive == null || contains(["enable", "disable"], o.passive)]))
    error_message = "Parameter `passive` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.remove_private_as == null || contains(["enable", "disable"], o.remove_private_as)]))
    error_message = "Parameter `remove_private_as` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.remove_private_as6 == null || contains(["enable", "disable"], o.remove_private_as6)]))
    error_message = "Parameter `remove_private_as6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.remove_private_as_vpnv4 == null || contains(["enable", "disable"], o.remove_private_as_vpnv4)]))
    error_message = "Parameter `remove_private_as_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.remove_private_as_vpnv6 == null || contains(["enable", "disable"], o.remove_private_as_vpnv6)]))
    error_message = "Parameter `remove_private_as_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.remove_private_as_evpn == null || contains(["enable", "disable"], o.remove_private_as_evpn)]))
    error_message = "Parameter `remove_private_as_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.route_reflector_client == null || contains(["enable", "disable"], o.route_reflector_client)]))
    error_message = "Parameter `route_reflector_client` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.route_reflector_client6 == null || contains(["enable", "disable"], o.route_reflector_client6)]))
    error_message = "Parameter `route_reflector_client6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.route_reflector_client_vpnv4 == null || contains(["enable", "disable"], o.route_reflector_client_vpnv4)]))
    error_message = "Parameter `route_reflector_client_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.route_reflector_client_vpnv6 == null || contains(["enable", "disable"], o.route_reflector_client_vpnv6)]))
    error_message = "Parameter `route_reflector_client_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.route_reflector_client_evpn == null || contains(["enable", "disable"], o.route_reflector_client_evpn)]))
    error_message = "Parameter `route_reflector_client_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.route_server_client == null || contains(["enable", "disable"], o.route_server_client)]))
    error_message = "Parameter `route_server_client` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.route_server_client6 == null || contains(["enable", "disable"], o.route_server_client6)]))
    error_message = "Parameter `route_server_client6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.route_server_client_vpnv4 == null || contains(["enable", "disable"], o.route_server_client_vpnv4)]))
    error_message = "Parameter `route_server_client_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.route_server_client_vpnv6 == null || contains(["enable", "disable"], o.route_server_client_vpnv6)]))
    error_message = "Parameter `route_server_client_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.route_server_client_evpn == null || contains(["enable", "disable"], o.route_server_client_evpn)]))
    error_message = "Parameter `route_server_client_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.rr_attr_allow_change == null || contains(["enable", "disable"], o.rr_attr_allow_change)]))
    error_message = "Parameter `rr_attr_allow_change` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.rr_attr_allow_change6 == null || contains(["enable", "disable"], o.rr_attr_allow_change6)]))
    error_message = "Parameter `rr_attr_allow_change6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.rr_attr_allow_change_vpnv4 == null || contains(["enable", "disable"], o.rr_attr_allow_change_vpnv4)]))
    error_message = "Parameter `rr_attr_allow_change_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.rr_attr_allow_change_vpnv6 == null || contains(["enable", "disable"], o.rr_attr_allow_change_vpnv6)]))
    error_message = "Parameter `rr_attr_allow_change_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.rr_attr_allow_change_evpn == null || contains(["enable", "disable"], o.rr_attr_allow_change_evpn)]))
    error_message = "Parameter `rr_attr_allow_change_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.adv_evpn_route == null || contains(["type2", "type5", "local"], o.adv_evpn_route)]))
    error_message = "Parameter `adv_evpn_route` must be one of `type2`, `type5`, `local`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.soft_reconfiguration == null || contains(["enable", "disable"], o.soft_reconfiguration)]))
    error_message = "Parameter `soft_reconfiguration` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.soft_reconfiguration6 == null || contains(["enable", "disable"], o.soft_reconfiguration6)]))
    error_message = "Parameter `soft_reconfiguration6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.soft_reconfiguration_vpnv4 == null || contains(["enable", "disable"], o.soft_reconfiguration_vpnv4)]))
    error_message = "Parameter `soft_reconfiguration_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.soft_reconfiguration_vpnv6 == null || contains(["enable", "disable"], o.soft_reconfiguration_vpnv6)]))
    error_message = "Parameter `soft_reconfiguration_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.soft_reconfiguration_evpn == null || contains(["enable", "disable"], o.soft_reconfiguration_evpn)]))
    error_message = "Parameter `soft_reconfiguration_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.as_override == null || contains(["enable", "disable"], o.as_override)]))
    error_message = "Parameter `as_override` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.as_override6 == null || contains(["enable", "disable"], o.as_override6)]))
    error_message = "Parameter `as_override6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.strict_capability_match == null || contains(["enable", "disable"], o.strict_capability_match)]))
    error_message = "Parameter `strict_capability_match` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.maximum_prefix_threshold == null || (o.maximum_prefix_threshold >= 1 && o.maximum_prefix_threshold <= 100)]))
    error_message = "Parameter `maximum_prefix_threshold` must be in the range 1-100."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.maximum_prefix_threshold6 == null || (o.maximum_prefix_threshold6 >= 1 && o.maximum_prefix_threshold6 <= 100)]))
    error_message = "Parameter `maximum_prefix_threshold6` must be in the range 1-100."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.maximum_prefix_threshold_vpnv4 == null || (o.maximum_prefix_threshold_vpnv4 >= 1 && o.maximum_prefix_threshold_vpnv4 <= 100)]))
    error_message = "Parameter `maximum_prefix_threshold_vpnv4` must be in the range 1-100."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.maximum_prefix_threshold_vpnv6 == null || (o.maximum_prefix_threshold_vpnv6 >= 1 && o.maximum_prefix_threshold_vpnv6 <= 100)]))
    error_message = "Parameter `maximum_prefix_threshold_vpnv6` must be in the range 1-100."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.maximum_prefix_threshold_evpn == null || (o.maximum_prefix_threshold_evpn >= 1 && o.maximum_prefix_threshold_evpn <= 100)]))
    error_message = "Parameter `maximum_prefix_threshold_evpn` must be in the range 1-100."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.maximum_prefix_warning_only == null || contains(["enable", "disable"], o.maximum_prefix_warning_only)]))
    error_message = "Parameter `maximum_prefix_warning_only` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.maximum_prefix_warning_only6 == null || contains(["enable", "disable"], o.maximum_prefix_warning_only6)]))
    error_message = "Parameter `maximum_prefix_warning_only6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.maximum_prefix_warning_only_vpnv4 == null || contains(["enable", "disable"], o.maximum_prefix_warning_only_vpnv4)]))
    error_message = "Parameter `maximum_prefix_warning_only_vpnv4` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.maximum_prefix_warning_only_vpnv6 == null || contains(["enable", "disable"], o.maximum_prefix_warning_only_vpnv6)]))
    error_message = "Parameter `maximum_prefix_warning_only_vpnv6` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.maximum_prefix_warning_only_evpn == null || contains(["enable", "disable"], o.maximum_prefix_warning_only_evpn)]))
    error_message = "Parameter `maximum_prefix_warning_only_evpn` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.local_as_no_prepend == null || contains(["enable", "disable"], o.local_as_no_prepend)]))
    error_message = "Parameter `local_as_no_prepend` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.local_as_replace_as == null || contains(["enable", "disable"], o.local_as_replace_as)]))
    error_message = "Parameter `local_as_replace_as` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.send_community == null || contains(["standard", "extended", "both", "disable"], o.send_community)]))
    error_message = "Parameter `send_community` must be one of `standard`, `extended`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.send_community6 == null || contains(["standard", "extended", "both", "disable"], o.send_community6)]))
    error_message = "Parameter `send_community6` must be one of `standard`, `extended`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.send_community_vpnv4 == null || contains(["standard", "extended", "both", "disable"], o.send_community_vpnv4)]))
    error_message = "Parameter `send_community_vpnv4` must be one of `standard`, `extended`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.send_community_vpnv6 == null || contains(["standard", "extended", "both", "disable"], o.send_community_vpnv6)]))
    error_message = "Parameter `send_community_vpnv6` must be one of `standard`, `extended`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.send_community_evpn == null || contains(["standard", "extended", "both", "disable"], o.send_community_evpn)]))
    error_message = "Parameter `send_community_evpn` must be one of `standard`, `extended`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.enforce_preferred_source == null || contains(["enable", "disable"], o.enforce_preferred_source)]))
    error_message = "Parameter `enforce_preferred_source` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.additional_path == null || contains(["send", "receive", "both", "disable"], o.additional_path)]))
    error_message = "Parameter `additional_path` must be one of `send`, `receive`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.additional_path6 == null || contains(["send", "receive", "both", "disable"], o.additional_path6)]))
    error_message = "Parameter `additional_path6` must be one of `send`, `receive`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.additional_path_vpnv4 == null || contains(["send", "receive", "both", "disable"], o.additional_path_vpnv4)]))
    error_message = "Parameter `additional_path_vpnv4` must be one of `send`, `receive`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.additional_path_vpnv6 == null || contains(["send", "receive", "both", "disable"], o.additional_path_vpnv6)]))
    error_message = "Parameter `additional_path_vpnv6` must be one of `send`, `receive`, `both`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.use_sdwan == null || contains(["enable", "disable"], o.use_sdwan)]))
    error_message = "Parameter `use_sdwan` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.neighbor : o.dynamic_sort_subtable == null || contains(["false", "true", "natural", "alphabetical"], o.dynamic_sort_subtable)]))
    error_message = "Parameter `dynamic_sort_subtable` must be one of `false`, `true`, `natural`, `alphabetical`."
  }
}

variable "prefixlist" {
  description = "IPv4 Routing prefix list"
  default     = []

  type = list(object({
    name     = string
    comments = optional(string)
    rule = optional(list(object({
      id     = optional(number)
      action = optional(string)
      prefix = optional(string)
      ge     = optional(number)
      le     = optional(number)
      flags  = optional(string)
    })), [])
    dynamic_sort_subtable = optional(string, "natural")
    get_all_tables        = optional(bool, "false")
    vdomparam             = optional(string)
    update_if_exist       = optional(bool)
  }))

  validation {
    condition     = alltrue(flatten([for o in var.prefixlist : [for p in o.rule : p.action == null || contains(["permit", "deny"], p.action)]]))
    error_message = "Parameter `rule.action` must be one of `permit`, `deny`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.prefixlist : [for p in o.rule : p.ge == null || (p.ge >= 0 && p.ge <= 32)]]))
    error_message = "Parameter `rule.ge` must be in the range 0-32."
  }
  validation {
    condition     = alltrue(flatten([for o in var.prefixlist : [for p in o.rule : p.le == null || (p.le >= 0 && p.le <= 32)]]))
    error_message = "Parameter `rule.le` must be in the range 0-32."
  }
}

variable "prefixlist6" {
  description = "IPv6 Routing prefix list"
  default     = []

  type = list(object({
    name     = string
    comments = optional(string)
    rule = optional(list(object({
      id      = optional(number)
      action  = optional(string)
      prefix6 = optional(string)
      ge      = optional(number)
      le      = optional(number)
      flags   = optional(string)
    })), [])
    dynamic_sort_subtable = optional(string, "natural")
    get_all_tables        = optional(bool, "false")
    vdomparam             = optional(string)
    update_if_exist       = optional(bool)
  }))

  validation {
    condition     = alltrue(flatten([for o in var.prefixlist6 : [for p in o.rule : p.action == null || contains(["permit", "deny"], p.action)]]))
    error_message = "Parameter `rule.action` must be one of `permit`, `deny`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.prefixlist6 : [for p in o.rule : p.ge == null || (p.ge >= 0 && p.ge <= 128)]]))
    error_message = "Parameter `rule.ge` must be in the range 0-128."
  }
  validation {
    condition     = alltrue(flatten([for o in var.prefixlist6 : [for p in o.rule : p.le == null || (p.le >= 0 && p.le <= 128)]]))
    error_message = "Parameter `rule.le` must be in the range 0-128."
  }
}

variable "routemap" {
  description = "Route Map"
  default     = []

  type = list(object({
    name     = string
    comments = optional(string)
    rule = optional(list(object({
      id                                     = optional(number)
      action                                 = optional(string)
      match_as_path                          = optional(string)
      match_community                        = optional(string)
      match_extcommunity                     = optional(string)
      match_community_exact                  = optional(string)
      match_extcommunity_exact               = optional(string)
      match_origin                           = optional(string)
      match_interface                        = optional(string)
      match_ip_address                       = optional(string)
      match_ip6_address                      = optional(string)
      match_ip_nexthop                       = optional(string)
      match_ip6_nexthop                      = optional(string)
      match_metric                           = optional(string)
      match_route_type                       = optional(string)
      match_tag                              = optional(string)
      match_vrf                              = optional(string)
      match_suppress                         = optional(string)
      set_aggregator_as                      = optional(string)
      set_aggregator_ip                      = optional(string)
      set_aspath_action                      = optional(string)
      set_aspath                             = optional(list(string), [])
      set_atomic_aggregate                   = optional(string)
      set_community_delete                   = optional(string)
      set_community                          = optional(list(string), [])
      set_community_additive                 = optional(string)
      set_dampening_reachability_half_life   = optional(number)
      set_dampening_reuse                    = optional(number)
      set_dampening_suppress                 = optional(number)
      set_dampening_max_suppress             = optional(number)
      set_dampening_unreachability_half_life = optional(number)
      set_extcommunity_rt                    = optional(list(string), [])
      set_extcommunity_soo                   = optional(list(string), [])
      set_ip_nexthop                         = optional(string)
      set_ip_prefsrc                         = optional(string)
      set_vpnv4_nexthop                      = optional(string)
      set_ip6_nexthop                        = optional(string)
      set_ip6_nexthop_local                  = optional(string)
      set_vpnv6_nexthop                      = optional(string)
      set_vpnv6_nexthop_local                = optional(string)
      set_local_preference                   = optional(string)
      set_metric                             = optional(string)
      set_metric_type                        = optional(string)
      set_originator_id                      = optional(string)
      set_origin                             = optional(string)
      set_tag                                = optional(string)
      set_weight                             = optional(number)
      set_flags                              = optional(number)
      match_flags                            = optional(number)
      set_route_tag                          = optional(string)
      set_priority                           = optional(string)
    })), [])
    dynamic_sort_subtable = optional(string, "natural")
    get_all_tables        = optional(bool, false)
    vdomparam             = optional(string)
    update_if_exist       = optional(bool)
  }))

  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.action == null || contains(["permit", "deny"], p.action)]]))
    error_message = "Parameter `rule.action` must be one of `permit`, `deny`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.match_community_exact == null || contains(["enable", "disable"], p.match_community_exact)]]))
    error_message = "Parameter `rule.match_community_exact` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.match_extcommunity_exact == null || contains(["enable", "disable"], p.match_extcommunity_exact)]]))
    error_message = "Parameter `rule.match_extcommunity_exact` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.match_origin == null || contains(["none", "egp", "igp", "incomplete"], p.match_origin)]]))
    error_message = "Parameter `rule.match_origin` must be one of `none`, `egp`, `igp`, `incomplete`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.match_suppress == null || contains(["enable", "disable"], p.match_suppress)]]))
    error_message = "Parameter `rule.match_suppress` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.set_aspath_action == null || contains(["prepend", "replace"], p.set_aspath_action)]]))
    error_message = "Parameter `rule.set_aspath_action` must be one of `prepend`, `replace`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.set_atomic_aggregate == null || contains(["enable", "disable"], p.set_atomic_aggregate)]]))
    error_message = "Parameter `rule.set_atomic_aggregate` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.set_community_additive == null || contains(["enable", "disable"], p.set_community_additive)]]))
    error_message = "Parameter `rule.set_community_additive` must be one of `enable`, `disable`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.set_dampening_reachability_half_life == null || (p.set_dampening_reachability_half_life >= 0 && p.set_dampening_reachability_half_life <= 45)]]))
    error_message = "Parameter `rule.set_dampening_reachability_half_life` must be in the range 0-45."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.set_dampening_reuse == null || (p.set_dampening_reuse >= 0 && p.set_dampening_reuse <= 20000)]]))
    error_message = "Parameter `rule.set_dampening_reuse` must be in the range 0-20000."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.set_dampening_suppress == null || (p.set_dampening_suppress >= 0 && p.set_dampening_suppress <= 20000)]]))
    error_message = "Parameter `rule.set_dampening_suppress` must be in the range 0-20000."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.set_dampening_max_suppress == null || (p.set_dampening_max_suppress >= 0 && p.set_dampening_max_suppress <= 255)]]))
    error_message = "Parameter `rule.set_dampening_max_suppress` must be in the range 0-255."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.set_dampening_unreachability_half_life == null || (p.set_dampening_unreachability_half_life >= 0 && p.set_dampening_unreachability_half_life <= 45)]]))
    error_message = "Parameter `rule.set_dampening_unreachability_half_life` must be in the range 0-45."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.set_origin == null || contains(["none", "egp", "igp", "incomplete"], p.set_origin)]]))
    error_message = "Parameter `rule.set_origin` must be one of `none`, `egp`, `igp`, `incomplete`."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.set_flags == null || (p.set_flags >= 0 && p.set_flags <= 65535)]]))
    error_message = "Parameter `rule.set_flags` must be in the range 0-65535."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : [for p in o.rule : p.match_flags == null || (p.match_flags >= 0 && p.match_flags <= 65535)]]))
    error_message = "Parameter `rule.match_flags` must be in the range 0-65535."
  }
  validation {
    condition     = alltrue(flatten([for o in var.routemap : o.dynamic_sort_subtable == null || contains(["false", "true", "natural", "alphabetical"], o.dynamic_sort_subtable)]))
    error_message = "Parameter `dynamic_sort_subtable` must be one of `false`, `true`, `natural`, `alphabetical`."
  }
}
