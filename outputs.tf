output "automation_dsc_configurations" {
  description = "All automation_dsc_configuration resources"
  value       = azurerm_automation_dsc_configuration.automation_dsc_configurations
}
output "automation_dsc_configurations_automation_account_name" {
  description = "List of automation_account_name values across all automation_dsc_configurations"
  value       = [for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : v.automation_account_name]
}
output "automation_dsc_configurations_content_embedded" {
  description = "List of content_embedded values across all automation_dsc_configurations"
  value       = [for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : v.content_embedded]
}
output "automation_dsc_configurations_description" {
  description = "List of description values across all automation_dsc_configurations"
  value       = [for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : v.description]
}
output "automation_dsc_configurations_location" {
  description = "List of location values across all automation_dsc_configurations"
  value       = [for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : v.location]
}
output "automation_dsc_configurations_log_verbose" {
  description = "List of log_verbose values across all automation_dsc_configurations"
  value       = [for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : v.log_verbose]
}
output "automation_dsc_configurations_name" {
  description = "List of name values across all automation_dsc_configurations"
  value       = [for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : v.name]
}
output "automation_dsc_configurations_resource_group_name" {
  description = "List of resource_group_name values across all automation_dsc_configurations"
  value       = [for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : v.resource_group_name]
}
output "automation_dsc_configurations_state" {
  description = "List of state values across all automation_dsc_configurations"
  value       = [for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : v.state]
}
output "automation_dsc_configurations_tags" {
  description = "List of tags values across all automation_dsc_configurations"
  value       = [for k, v in azurerm_automation_dsc_configuration.automation_dsc_configurations : v.tags]
}

