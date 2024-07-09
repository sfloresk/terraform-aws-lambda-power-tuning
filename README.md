## :stop_sign: This module is now deprecated - the official AWS lambda power tuning terraform module can be found at https://registry.terraform.io/modules/aws-ia/lambda-power-tuning/aws/latest :stop_sign:


# AWS Lambda Power Tuning Terraform module

Terraform module which deploys the [Lambda power tuning solution](https://github.com/alexcasalboni/aws-lambda-power-tuning)

## Usage

```hcl
module "lambda-power-tuning" {
  source  = "sfloresk/lambda-power-tuning/aws"
  aws_account_id = "1234567890"
  aws_region = "us-west-2"
}
  
```

## Examples

- [Complete](https://github.com/sfloresk/terraform-aws-lambda-power-tuning/tree/master/examples/complete) - Example with all variables

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_sfn_state_machine.state-machine](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine) | resource |
| [aws_iam_role.analyzer_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.optimizer_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.executor_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.initializer_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.cleaner_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.sfn_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_policy.analyzer_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_iam_policy_attachment.execute-attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment) | resource |
| [aws_iam_policy.executor_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy_attachment.executor-attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment) | resource |
| [aws_iam_policy.initializer_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy_attachment.initializer-attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment) | resource |
| [aws_iam_policy.cleaner_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy_attachment.cleaner-attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment) | resource |
| [aws_iam_policy.optimizer_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy_attachment.optimizer-attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment) | resource |
| [aws_iam_policy.sfn_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy_attachment.sfn-attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment) | resource |
| [aws_lambda_function.analyzer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [aws_lambda_function.cleaner](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [aws_lambda_function.executor](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [aws_lambda_function.initializer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [aws_lambda_function.optimizer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [aws_lambda_layer_version.lambda_layer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_layer_version) | resource |
| [null_resource.build_layer](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [archive_file.layer](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |
| [archive_file.app](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="aws_account_id"></a> [aws\_account\_id](#input\_aws\_account\_id) | A map of additional tags to add to the autoscaling group | `string` | | yes |
| <a name="aws_region"></a> [aws\_region](#input\_aws\_region) | The region that the AWS lambda power tuning app is going to be deployed | `string` | | yes |
| <a name="lambda_function_prefix"></a> [lambda\_function\_prefix](#input\_lambda\_function\_prefix) | Prefix used for the names of Lambda functions, Step Functions state machines, IAM roles, and IAM policies. | `string` | `lambda_power_tuning` | no |
| <a name="role_path_override"></a> [role\_path\_override](#input\_role\_path\_override) | IAM Role path to use for each Lambda function's role, instead of the default path /lambda_power_tuning/ (see variable lambda_function_prefix) | `string` | `""` | no |
| <a name="permissions_boundary"></a> [permissions\_boundary](#input\_permissions\_boundary) | ARN of the policy that is used to set the permissions boundary for the role.| `string` | `null` | no |
| <a name="vpc_subnet_ids"></a> [vpc\_subnet\_ids](#input\_vpc\_subnet\_ids) | List of subnet ids when Lambda Function should run in the VPC. Usually private or intra subnets.| `list(string)` | `null` | no |
| <a name="vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | List of security group ids when Lambda Function should run in the VPC. | `list(string)` | `null` | no |


## Outputs

| Name | Description |
|------|-------------|
| Analyzer function | Analyzer lambda function ARN | 
| Cleaner function | Cleaner lambda function ARN | 
| Executor function | Executor lambda function ARN | 
| Initializer function | Initializer lambda function ARN | 
| Optimizer function | Optimizer lambda function ARN | 

## Authors

Module is maintained by [Santiago Flores Kanter](https://github.com/sfloresk/terraform-aws-lambda-power-tuning) and it is based from Alex Casalboni [Lambda power tuning solution](https://github.com/alexcasalboni/aws-lambda-power-tuning).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/terraform-aws-modules/terraform-aws-autoscaling/tree/master/LICENSE) for full details.
