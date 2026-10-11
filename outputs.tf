output "core_boot_volumes_lookup_id" {
  description = "Map of id values across all core_boot_volumes_lookup, keyed the same as var.core_boot_volumes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_boot_volumes.core_boot_volumes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_boot_volumes_lookup_availability_domain" {
  description = "Map of availability_domain values across all core_boot_volumes_lookup, keyed the same as var.core_boot_volumes_lookup except keys with no availability_domain are omitted"
  value       = { for k, v in data.oci_core_boot_volumes.core_boot_volumes_lookup : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "core_boot_volumes_lookup_boot_volumes" {
  description = "Map of boot_volumes values across all core_boot_volumes_lookup, keyed the same as var.core_boot_volumes_lookup except keys with no boot_volumes are omitted"
  value       = { for k, v in data.oci_core_boot_volumes.core_boot_volumes_lookup : k => v.boot_volumes if v.boot_volumes != null && length(v.boot_volumes) > 0 }
}
output "core_boot_volumes_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_boot_volumes_lookup, keyed the same as var.core_boot_volumes_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_boot_volumes.core_boot_volumes_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_boot_volumes_lookup_filter" {
  description = "Map of filter values across all core_boot_volumes_lookup, keyed the same as var.core_boot_volumes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_boot_volumes.core_boot_volumes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_boot_volumes_lookup_volume_group_id" {
  description = "Map of volume_group_id values across all core_boot_volumes_lookup, keyed the same as var.core_boot_volumes_lookup except keys with no volume_group_id are omitted"
  value       = { for k, v in data.oci_core_boot_volumes.core_boot_volumes_lookup : k => v.volume_group_id if v.volume_group_id != null && length(v.volume_group_id) > 0 }
}

