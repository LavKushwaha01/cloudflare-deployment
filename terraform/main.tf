terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}


resource "cloudflare_workers_script" "backend" {
  account_id = var.account_id
  name       = "next-backend-worker"
  content    = file("${var.backend_build_path}/index.js")
  module     = true
}


resource "cloudflare_pages_project" "frontend" {
  account_id        = var.account_id
  name              = "next-frontend-project"
  production_branch = "main"

  source {
    type = "github"

    config {
      owner             = var.github_owner
      repo_name         = var.github_repo
      production_branch = "main"
    }
  }
}