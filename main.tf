# Generate a random color for the welcome swag hoodie
resource "random_id" "hoodie_color" {
  byte_length = 2
}

# The main resource definition
resource "human_engineer" "this" {
  name           = var.role_name
  retention_plan = "vesting_schedule_4_years"
  fuel_source    = var.coffee_supply

  # Configure the working environment
  environment = {
    os              = "macos"
    editor          = "vscode"
    weekend_emails  = "blocked"
  }

  # Lifecycle rules are critical for HR
  lifecycle {
    prevent_destroy = true # You cannot simply 'destroy' a human resource
    ignore_changes  = [
      fuel_source, # Caffeine intake fluctuates
      hair_color,  # Graying is expected during on-call rotation
    ]
  }
}

# Provisioning script to send the laptop
resource "null_resource" "logistics_chain" {
  triggers = {
    engineer_id = human_engineer.this.id
  }
  provisioner "local-exec" {
    command = "echo '📦 Shipping MacBook Pro M4 to remote location...'"
  }
}

