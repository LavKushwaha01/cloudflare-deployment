variable "cloudflare_api_token" {
      type = string
}
variable "account_id" {
      type = string
}
variable "github_owner" {
      type = string
}
variable "github_repo" {
      type = string
}

variable "backend_build_path" {
  description = "Path to worker build output"
}
