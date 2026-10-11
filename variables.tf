variable "switchover_pairs" {
  description = <<EOT
Map of switchover_pairs, attributes below
Required:
    - active_member
    - display_name
    - environment_crn
    - members (block):
        - member_crn (required)
        - name (required)
EOT

  type = map(object({
    active_member   = string
    display_name    = string
    environment_crn = string
    members = list(object({
      member_crn = string
      name       = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.switchover_pairs : (
        length(v.members) >= 2 && length(v.members) <= 2
      )
    ])
    error_message = "Each members list must contain between 2 and 2 items"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

