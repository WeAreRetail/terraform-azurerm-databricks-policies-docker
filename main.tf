resource "databricks_cluster_policy" "policy" {
  name       = var.policy_name
  definition = jsonencode(local.merged_policy)
}

resource "databricks_permissions" "can_use_cluster_policyinstance_profile" {
  cluster_policy_id = databricks_cluster_policy.policy.id
  access_control {
    group_name       = var.can_use_group
    permission_level = "CAN_USE"
  }
}

locals {

  policy_overrides_safe = var.policy_overrides != null ? var.policy_overrides : {}

  merged_policy = merge(local.default_policy, local.policy_overrides_safe, local.log_policy)

  # If a log_name was provided, define the log policy.
  log_policy = length(var.logs_path) > 0 ? local.log_policy_template : {}

  default_policy = {

    "autoscale.max_workers" : {
      "type" : "unlimited",
      "defaultValue" : 2
    },
    "autoscale.min_workers" : {
      "type" : "unlimited",
      "defaultValue" : 1
    },
    "azure_attributes.availability" : {
      "type" : "allowlist",
      "values" : [
        "SPOT_AZURE",
        "ON_DEMAND_AZURE",
        "SPOT_WITH_FALLBACK_AZURE"
      ],
      "hidden" : false
    },
    "custom_tags.policy" : {
      "type" : "fixed",
      "value" : "analysts"
    },
    "data_security_mode" : {
      "type" : "fixed",
      "value" : "NONE",
      "hidden" : false
    },
    "docker_image.basic_auth.password" : {
      "type" : "fixed",
      "hidden" : true,
      "value" : var.docker_spn_client_secret
    },
    "docker_image.basic_auth.username" : {
      "type" : "fixed",
      "hidden" : true,
      "value" : var.docker_spn_client_id
    },
    "docker_image.url" : {
      "type" : "fixed",
      "hidden" : false,
      "value" : var.docker_image_url
    },
    "runtime_engine" : {
      "type" : "fixed",
      "value" : "STANDARD",
      "hidden" : false
    },
    "spark_version" : {
      "type" : "allowlist",
      "values" : [var.databricks_version]
      "hidden" : false
    }
  }

  log_policy_template = {
    "cluster_log_conf.type" : {
      "type" : "fixed",
      "value" : "DBFS",
      "hidden" : false
    },
    "cluster_log_conf.path" : {
      "type" : "fixed",
      "value" : var.logs_path,
      "hidden" : false
    }
  }
}
