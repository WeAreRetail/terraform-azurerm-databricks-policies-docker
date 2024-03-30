output "policy_id" {
  value       = databricks_cluster_policy.policy.policy_id
  description = "ID of the policy created."
}

output "policy_name" {
  value       = databricks_cluster_policy.policy.name
  description = "Name of the policy created."
}

output "is_job_policy" {
  value       = var.is_job_policy
  description = "Whether the policy is a job policy. Informational variable."
}
