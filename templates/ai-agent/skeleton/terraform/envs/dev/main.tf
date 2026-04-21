module "agent" {
  source = "git::https://github.com/your-org/platform-terraform-modules.git//agent"

  agent_name  = "${{ values.agent_name }}"
  environment = "${{ values.environment }}"

  enable_bedrock = true

  tags = {
    owner = "${{ values.owner }}"
    model = "${{ values.model_name }}"
  }
}
