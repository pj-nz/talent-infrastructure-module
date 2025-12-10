terraform {
  required_version = ">= 1.5.0"
  required_providers {
    # Using the fictional 'human' provider
    human = {
      source  = "registry.terraform.io/hashicorp/human"
      version = "~> 2.0"
    }
    # Need random provider for assigning swag colors
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

