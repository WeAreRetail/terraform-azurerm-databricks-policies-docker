variable "can_use_group" {
  type        = string
  description = "The group that can use the policy"
}

variable "docker_image_url" {
  type        = string
  description = "The Docker image URL"
}

variable "docker_spn_client_id" {
  type        = string
  description = "The SPN client id for ACR authentication"
}

variable "docker_spn_client_secret" {
  type        = string
  description = "The SPN client secret for ACR authentication"
}

variable "logs_path" {
  type        = string
  description = "The cluster log path"
  default     = ""
}

variable "policy_name" {
  type        = string
  description = "Cluster Policy Name"
}

variable "policy_overrides" {
  description = "Cluster policy overrides"
  default     = {}
}

variable "databricks_version" {
  type        = string
  description = "The specific Databricks runtime version. Example: \"11.3.x-scala2.12\""
}
