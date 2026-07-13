variable "automation_dsc_configurations" {
  description = <<EOT
Map of automation_dsc_configurations, attributes below
Required:
    - automation_account_name
    - content_embedded
    - location
    - name
    - resource_group_name
Optional:
    - description
    - log_verbose
    - tags
EOT

  type = map(object({
    automation_account_name = string
    content_embedded        = string
    location                = string
    name                    = string
    resource_group_name     = string
    description             = optional(string)
    log_verbose             = optional(bool)
    tags                    = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.automation_dsc_configurations : (
        can(regex("^[a-zA-Z0-9_]{1,64}$", v.name))
      )
    ])
    error_message = "The name length must be from 1 to 64 characters. The name can only contain letters, numbers and underscores."
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_dsc_configurations : (
        length(v.content_embedded) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_dsc_configurations : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_dsc_configurations : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_dsc_configurations : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_dsc_configurations : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

