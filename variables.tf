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
    log_verbose             = optional(bool) # Default: false
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
  # --- Unconfirmed validation candidates, derived from azurerm_automation_dsc_configuration's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: automation_account_name
  #   source:    validate.AutomationAccount: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

