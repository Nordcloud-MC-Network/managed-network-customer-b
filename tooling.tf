module "tooling" {
  source  = "app.terraform.io/managed-network-${customer_name}/tfc-pipeline/nordcloud"
  version = "~> 0.0.1"

  tfe_organization      = var.organization_id
  vcs_provider_token_id = var.oauth_token_id

  repository_name        = format("%s-tooling", local.repository_name)
  repository_description = "Customer tooling terraform IaC"

  associate_operator_team = true
  operator_team_id        = var.operator_team_id

  template_repository = local.tooling-template
  environment         = local.tooling-environment
}
