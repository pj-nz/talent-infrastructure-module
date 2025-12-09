# talent-infrastructure-module
Open-source module for provisioning, deploying, and maintaining high-availability technical talent. 

# Talent Infrastructure Module (v2.0.25) 👷‍♂️🚀

![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![Psychological Safety](https://img.shields.io/badge/psychological%20safety-100%25-blue)
![Dependencies](https://img.shields.io/badge/dependencies-coffee%20%26%20snacks-orange)
![License](https://img.shields.io/badge/license-MIT-lightgrey)

**Provision high-performing humans using Infrastructure as Code.**

Welcome to the documentation for the `talent-infrastructure-module`. This module allows organisations to provision, deploy, and maintain talent capacity using declarative configuration. Stop "filling seats" and start "deploying capacity."

## 📋 Prerequisites

Before running this module, ensure your environment meets the minimum requirements:

* **Leadership OS:** Version 2.0 or higher (Legacy "Command & Control" kernels are not supported).
* **Clear Mission Statement:** Must not be `null`.
* **Market Rates:** Ensure `salary_database` is synced with current inflation.
* **Snacks:** Local cache of Whittaker's Chocolate and decent coffee.

## 🚀 Quick Start

Add the following block to your `main.tf` file to deploy a new team member.

```hcl
module "senior_engineer" {
  source = "git::[https://github.com/your-org/talent-infrastructure.git](https://github.com/your-org/talent-infrastructure.git)"

  # Basic Configuration
  role_name          = "Full Stack Legend"
  years_experience   = "Quality > Quantity"
  start_date         = "2025-10-20"

  # Environment Settings
  remote_work        = true
  micromanagement    = false   # WARNING: Setting to 'true' causes kernel panic
  psychological_safety = "enabled"

  # Resource Allocation
  hardware           = "macbook_pro_m4"
  swag_pack          = ["hoodie", "sticker_pack", "keep_cup"]

  # Culture Configuration
  values = {
    curiosity = "high"
    ego       = "null"
    empathy   = "required"
  }
}
```

## ⚙️ Inputs

| Name | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `salary_range` | string | `competitive` | **CRITICAL:** Must match actual market rates. If value is low, `candidate_pool` will return `404 Not Found`. |
| `onboarding_buddy` | bool | `true` | Assigns a shadow instance to help the new node integrate into the cluster. |
| `meetings_per_week` | int | `5` | If > 10, performance degradation (burnout) will occur exponentially. |
| `friday_drinks` | bool | `optional` | Support for social protocols. |

## 🏗 Architecture

The lifecycle of a Talent Resource follows this pipeline:

1. **`terraform plan` (Sourcing):** Scans the ecosystem for compatible nodes.
2. **`terraform apply` (Hiring):** Deploys the contract and provisions the user in the payroll database.
3. **`health_check` (Probation):** Monitors output, engagement, and culture-add metrics.
4. **`maintenance` (Retention):** Applies regular patches via `salary_reviews` and `upskilling_credits`.

## 🐛 Troubleshooting & Known Issues

### Error: ConnectionRefused during Interview
* **Cause:** The candidate detected a toxic environment during the handshake protocol.
* **Fix:** Run `audit_culture.sh` and upgrade your interview panel firmware.

### Warning: High CPU Usage (Burnout)
* **Symptoms:** Reduced output, cynicism, increased sick leave.
* **Fix:** Immediate deployment of `mandatory_leave` and resource re-balancing. Do not attempt to fix with `free_pizza`.

## ⚠️ Deprecation Notice

* The `ping_pong_table` perk has been deprecated in favour of `flexible_working_hours`.
* The `rockstar_ninja` job title is no longer supported and will throw a validation error.

## 🤝 Contributing

Pull requests are welcome.

1. Fork the repo.
2. Create your feature branch (`git checkout -b feature/better-onboarding`).
3. Ensure you pass the "No Jerks" unit test.
4. Commit your changes.

---
*Maintained with ❤️ and caffeine by the People Ops Team.*
