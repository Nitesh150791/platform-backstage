terraform {
  backend "s3" {
    bucket         = "org-terraform-state"
    key            = "agents/${{ values.agent_name }}/${{ values.environment }}.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
``
