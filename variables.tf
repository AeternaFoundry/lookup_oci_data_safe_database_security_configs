variable "data_safe_database_security_configs_lookup" {
  description = <<EOT
Map of data_safe_database_security_configs_lookup, attributes below
Required:
    - compartment_id
Optional:
    - access_level
    - compartment_id_in_subtree
    - database_security_config_id
    - display_name
    - state
    - target_database_group_id
    - target_id
    - time_created_greater_than_or_equal_to
    - time_created_less_than
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                        = string
    access_level                          = optional(string)
    compartment_id_in_subtree             = optional(bool)
    database_security_config_id           = optional(string)
    display_name                          = optional(string)
    state                                 = optional(string)
    target_database_group_id              = optional(string)
    target_id                             = optional(string)
    time_created_greater_than_or_equal_to = optional(string)
    time_created_less_than                = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

