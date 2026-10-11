variable "core_boot_volumes_lookup" {
  description = <<EOT
Map of core_boot_volumes_lookup, attributes below
Optional:
    - availability_domain
    - compartment_id
    - volume_group_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    availability_domain = optional(string)
    compartment_id      = optional(string)
    volume_group_id     = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

