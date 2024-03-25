output "Analyzer function" {
  description = "Analyzer lambda function ARN"
  value       = try(aws_lambda_function.analyzer.arn, null)
}

output "Cleaner function" {
  description = "Cleaner lambda function ARN"
  value       = try(aws_lambda_function.cleaner.arn, null)
}

output "Executor function" {
  description = "Executor lambda function ARN"
  value       = try(aws_lambda_function.executor.arn, null)
}

output "Initializer function" {
  description = "Initializer lambda function ARN"
  value       = try(aws_lambda_function.initializer.arn, null)
}

output "Optimizer function" {
  description = "optimizer lambda function ARN"
  value       = try(aws_lambda_function.optimizer.arn, null)
}