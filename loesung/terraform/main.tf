terraform {
  required_version = ">= 1.0.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "project" {
  type    = string
  default = "novatech"
}

resource "local_file" "deployment" {
  filename = "${path.module}/output/${var.environment}-deployment.json"
  content = jsonencode({
    project     = var.project
    environment = var.environment
    deployed_at = timestamp()
    pipeline    = "github-actions"
  })
}

output "deployment_file" {
  value = local_file.deployment.filename
}
