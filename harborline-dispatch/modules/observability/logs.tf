resource "aws_cloudwatch_log_group" "dispatch" {
  name              = "/harborline/dispatch"
  retention_in_days = 14
}

resource "aws_cloudwatch_log_group" "worker" {
  name              = "/harborline/worker"
  retention_in_days = 30
}

resource "aws_cloudwatch_log_group" "api" {
  name              = "/harborline/api"
  retention_in_days = 90
}
