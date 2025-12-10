# Talent Infrastructure Module (v2.0.25) ☁️

![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![Uptime](https://img.shields.io/badge/uptime-99.999%25-blue)
![Dependencies](https://img.shields.io/badge/dependencies-coffee%20%26%20snacks-orange)
![License](https://img.shields.io/badge/license-MIT-lightgrey)

**Provision high-availability engineering capacity using Infrastructure as Code.**

Welcome to the documentation for the `talent-infrastructure-module`. This module allows organisations to provision, deploy, and maintain engineering resources using declarative configuration. Stop "filling seats" and start "provisioning capacity" that meets your SLAs.

## 📋 Prerequisites

Before running this module, ensure your environment meets the minimum requirements:

* **Control Plane:** Version 2.0 or higher (Legacy "Command & Control" kernels are deprecated).
* **Mission Statement:** Must not be `null`.
* **Cost Centre:** Ensure `market_rate_database` is synced with current inflation.
* **Local Cache:** Whittaker's Chocolate and high-quality coffee beans.

## 🚀 Quick Start

Add the following block to your `main.tf` file to provision a new compute node.

```hcl
module "cloud_architect" {
  source = "git::https://github.com/your-org/talent-capacity.git"

  # Instance Configuration
  instance_type      = "senior.xlarge"
  availability_zone  = "remote-global" # Support for distributed clusters
  start_date         = "2025-10-20"

  # Security & Access
  iam_policy         = "autonomy_full_access" 
  micromanagement    = false  # WARNING: Setting 'true' applies a DenyAll rule to productivity

  # Health Checks
  psychological_safety_probe = {
    path              = "/daily-standup"
    interval          = "daily"
    failure_threshold = 0   # Zero tolerance for toxic packets
  }

  # Resource Tags
  tags = {
    Environment = "Production"
    Curiosity   = "High"
    Ego         = "Null"
  }
}
```

## ⚙️ Inputs

| Name | Type | Default | Description |
|------|------|---------|-------------|
| `market_rate_alignment` | bool | `true` | CRITICAL: If set to `false`, resource drift will occur immediately, and the `candidate_pool` API will return 404. |
| `shadow_mode` | bool | `true` | Enables a read-replica (buddy) for the first 30 days to ensure data consistency. |
| `context_switching_overhead` | int | `5` | (Formerly `meetings_per_week`). If > 10, IOPS will degrade significantly due to thrashing. |
| `social_protocol` | string | optional | Support for `friday_drinks` or `async_gaming` events. |

## 🏗 Architecture

The lifecycle of a Talent Resource follows this pipeline:

1. **`terraform plan` (Sourcing):** Scans the ecosystem for compatible nodes.
2. **`terraform apply` (Hiring):** Bootstraps the instance and provisions access to the environment.
3. **`readiness_probe` (Probation):** Monitors latency, throughput, and culture-add metrics.
4. **`auto_scaling` (Growth):** Vertical scaling via `salary_reviews` and `upskilling_credits`.

## 🐛 Troubleshooting & Known Issues

* **Error:** `ConnectionRefused` during Handshake
  * **Cause:** The candidate detected a toxic environment (TLS Error).
  * **Fix:** Run `audit_culture.sh` and upgrade your interview panel firmware.

* **Warning:** High Thermal Throttling (Burnout)
  * **Symptoms:** Latency spikes, packet loss (missed deadlines), cynicism.
  * **Fix:** Immediate deployment of `mandatory_leave` and load balancing. Do not attempt to patch with `free_pizza`—this creates technical debt.

## ⚠️ Deprecation Notice

* The `ping_pong_table` feature flag has been deprecated in favour of `flexible_working_hours`.
* The `rockstar_ninja` instance type is no longer supported and will throw a validation error.

## 🤝 Contributing

Pull requests are welcome.

1. Fork the repo.
2. Create your feature branch (`git checkout -b fix/reduce-onboarding-friction`).
3. Ensure you pass the "No Jerks" integration test.
4. Commit your changes.

Maintained with ❤️ and caffeine by the SRE (Site Reliability Engineering) Team.
