variable "role_name" {
  description = "The title of the resource being provisioned."
  type        = string
}

variable "salary_range" {
  description = "Compensation package configuration."
  type        = string
  default     = "market_rate"
  validation {
    condition     = var.salary_range != "exposure" && var.salary_range != "equity_only"
    error_message = "Validation Failed: 'exposure' is not a valid currency for mortgage payments."
  }
}

variable "micromanagement" {
  description = "Enable granular control over daily tasks."
  type        = bool
  default     = false
  validation {
    condition     = var.micromanagement == false
    error_message = "Error: Setting micromanagement to true violates the Geneva Convention on creative work."
  }
}

variable "remote_work" {
  description = "Enable distributed availability zones."
  type        = bool
  default     = true
}

variable "coffee_supply" {
  description = "Fuel source for the resource."
  type        = string
  default     = "barista_grade"
}

