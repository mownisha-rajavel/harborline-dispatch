resource "aws_db_instance" "dispatch" {
  identifier             = "harborline-dispatch"
  engine                 = "postgres"
  instance_class         = "db.t4g.medium"
  allocated_storage      = 100
  storage_encrypted      = true
  publicly_accessible    = false
  username               = "harborline"
  db_subnet_group_name   = "harborline-private"
  vpc_security_group_ids = [aws_security_group.app.id]
  skip_final_snapshot    = true
}
