data "oci_core_boot_volumes" "core_boot_volumes_lookup" {
  for_each = var.core_boot_volumes_lookup

  availability_domain = each.value.availability_domain
  compartment_id      = each.value.compartment_id
  volume_group_id     = each.value.volume_group_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

