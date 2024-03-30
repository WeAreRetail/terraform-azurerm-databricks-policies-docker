variable "can_use_group" {
  type        = string
  description = "The group that can use the policy"
}

variable "databricks_version" {
  type        = string
  description = "The specific Databricks runtime version. Example: \"11.3.x-scala2.12\""
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

variable "is_job_policy" {
  type        = bool
  description = "Whether the policy is a job policy. This is an informational variable."
  default     = false
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
  type        = map(any)
  description = "Cluster policy overrides"
  default     = {}
}
