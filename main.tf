data "oci_data_safe_database_security_configs" "data_safe_database_security_configs_lookup" {
  for_each = var.data_safe_database_security_configs_lookup

  compartment_id                        = each.value.compartment_id
  access_level                          = each.value.access_level
  compartment_id_in_subtree             = each.value.compartment_id_in_subtree
  database_security_config_id           = each.value.database_security_config_id
  display_name                          = each.value.display_name
  state                                 = each.value.state
  target_database_group_id              = each.value.target_database_group_id
  target_id                             = each.value.target_id
  time_created_greater_than_or_equal_to = each.value.time_created_greater_than_or_equal_to
  time_created_less_than                = each.value.time_created_less_than

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

