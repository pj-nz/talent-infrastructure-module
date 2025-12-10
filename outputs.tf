output "slack_handle" {
  description = "The communication endpoint for the resource."
  value       = human_engineer.this.slack_id
}

output "productivity_status" {
  description = "Current operating status."
  value       = var.micromanagement ? "DEGRADED" : "OPTIMAL"
}

output "onboarding_checklist" {
  value = [
    "Invite to GitHub Org",
    "Grant AWS ReadOnlyAccess",
    "Schedule Intro Coffee",
    "Warn about the legacy PHP codebase"
  ]
}

