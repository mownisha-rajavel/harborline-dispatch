resource "aws_lb" "dispatch" {
  name               = "harborline-dispatch"
  load_balancer_type = "application"
  internal           = false
}

resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.dispatch.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
  certificate_arn   = "arn:aws:acm:us-east-1:123456789012:certificate/harborline"

  default_action {
    type = "forward"
  }
}

resource "aws_ebs_volume" "worker" {
  availability_zone = "us-east-1a"
  size              = 50
  encrypted         = true
}
