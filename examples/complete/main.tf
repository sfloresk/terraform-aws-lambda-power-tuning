
provider "aws" {
  region = local.aws_region
}

locals {
  aws_region = "us-west-2"
}

module "aws_power_tuning" {
  source  = "terraform-aws-lambda-power-tuning"
  aws_account_id = "11223344556677"
  aws_region = local.aws_region
  lambda_function_prefix = "lambda_power_tuning"
  role_path_override = ""
  permissions_boundary = null
  vpc_subnet_ids = null
  vpc_security_group_ids = null
}