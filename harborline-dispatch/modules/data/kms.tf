resource "aws_kms_key" "data" {
  description         = "Customer-managed key for Harborline Dispatch uploads and the database."
  enable_key_rotation = false
}

resource "aws_kms_alias" "data" {
  name          = "alias/harborline-data"
  target_key_id = aws_kms_key.data.key_id
}

resource "aws_kms_key" "logs" {
  description         = "Key for CloudWatch log encryption."
  enable_key_rotation = true
}
