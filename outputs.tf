output "automation_dsc_configurations_id" {
  description = "Map of id values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "automation_dsc_configurations_automation_account_name" {
  description = "Map of automation_account_name values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.automation_account_name if v.automation_account_name != null && length(v.automation_account_name) > 0 }
}
output "automation_dsc_configurations_content_embedded" {
  description = "Map of content_embedded values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.content_embedded if v.content_embedded != null && length(v.content_embedded) > 0 }
}
output "automation_dsc_configurations_description" {
  description = "Map of description values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.description if v.description != null && length(v.description) > 0 }
}
output "automation_dsc_configurations_location" {
  description = "Map of location values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.location if v.location != null && length(v.location) > 0 }
}
output "automation_dsc_configurations_log_verbose" {
  description = "Map of log_verbose values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.log_verbose if v.log_verbose != null }
}
output "automation_dsc_configurations_name" {
  description = "Map of name values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "automation_dsc_configurations_resource_group_name" {
  description = "Map of resource_group_name values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "automation_dsc_configurations_state" {
  description = "Map of state values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.state if v.state != null && length(v.state) > 0 }
}
output "automation_dsc_configurations_tags" {
  description = "Map of tags values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

