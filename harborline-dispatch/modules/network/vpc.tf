resource "aws_vpc" "dispatch" {
  cidr_block = "10.20.0.0/16"

  tags = {
    Name = "harborline-dispatch"
  }
}

resource "aws_security_group" "app" {
  name        = "harborline-app"
  description = "HTTPS from crews. SSH stays on the private management CIDR."
  vpc_id      = aws_vpc.dispatch.id

  ingress {
    description = "Dispatch API"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Admin SSH from the office network"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.20.0.0/16"]
  }
}
