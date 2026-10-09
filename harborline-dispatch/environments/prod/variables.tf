variable "region" {
  description = "AWS region for the Harborline Dispatch production stack."
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "Application name used on resource names."
  type        = string
  default     = "harborline-dispatch"
}
