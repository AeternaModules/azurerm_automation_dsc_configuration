output "automation_dsc_configurations_automation_account_name" {
  description = "Map of automation_account_name values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.automation_account_name }
}
output "automation_dsc_configurations_content_embedded" {
  description = "Map of content_embedded values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.content_embedded }
}
output "automation_dsc_configurations_description" {
  description = "Map of description values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.description }
}
output "automation_dsc_configurations_location" {
  description = "Map of location values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.location }
}
output "automation_dsc_configurations_log_verbose" {
  description = "Map of log_verbose values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.log_verbose }
}
output "automation_dsc_configurations_name" {
  description = "Map of name values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.name }
}
output "automation_dsc_configurations_resource_group_name" {
  description = "Map of resource_group_name values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.resource_group_name }
}
output "automation_dsc_configurations_state" {
  description = "Map of state values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.state }
}
output "automation_dsc_configurations_tags" {
  description = "Map of tags values across all automation_dsc_configurations, keyed the same as var.automation_dsc_configurations"
  value       = { for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : k => v.tags }
}

