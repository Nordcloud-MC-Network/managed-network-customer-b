locals {
  config = jsondecode(var.config)

  templates_config = lookup(local.config, "templates", {})
  tooling-template = lookup(local.templates_config, "tooling", "")
  aws-template     = lookup(local.templates_config, "aws", "")

  tooling-environment = {}
  aws-environment = {
    AWS_ACCESS_KEY_ID : {
      value : "REPLACE_ME_IN_TFC_PORTAL"
      sensitive : true
      category : "env"
    }
    AWS_SECRET_ACCESS_KEY : {
      value : "REPLACE_ME_IN_TFC_PORTAL"
      sensitive : true
      category : "env"
    }
  }

  repository_name = format("managed-network-%s", var.customer_name)
}
