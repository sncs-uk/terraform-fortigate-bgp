<!-- BEGIN_TF_DOCS -->
# Fortigate BGP configuration module

This terraform module configures BGP on a firewall

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_fortios"></a> [fortios](#provider\_fortios) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [fortios_router_bgp.router_bgp](https://registry.terraform.io/providers/fortinetdev/fortios/latest/docs/resources/router_bgp) | resource |
| [fortios_router_prefixlist.prefixlist_v4](https://registry.terraform.io/providers/fortinetdev/fortios/latest/docs/resources/router_prefixlist) | resource |
| [fortios_router_prefixlist6.prefixlist_v6](https://registry.terraform.io/providers/fortinetdev/fortios/latest/docs/resources/router_prefixlist6) | resource |
| [fortios_router_routemap.routemaps](https://registry.terraform.io/providers/fortinetdev/fortios/latest/docs/resources/router_routemap) | resource |
| [fortios_routerbgp_neighbor.peer](https://registry.terraform.io/providers/fortinetdev/fortios/latest/docs/resources/routerbgp_neighbor) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_config_path"></a> [config\_path](#input\_config\_path) | Path to base configuration directory | `string` | n/a | yes |
| <a name="input_vdoms"></a> [vdoms](#input\_vdoms) | List of VDOMs from which to pull in configuration | `list(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->