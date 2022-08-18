resource "aws_lb" "main" {
  name               = "${var.project_name}-main-alb"
  internal           = false
  load_balancer_type = "application"

  security_groups = [
    aws_security_group.allow_web_traffic.id,
    aws_security_group.allow_all_outbound_traffic.id
  ]
  subnets = [aws_subnet.main_pu_web_a.id, aws_subnet.main_pu_web_c.id]
}

resource "aws_lb_target_group" "main" {
  name     = "main_default"
  port     = 8080
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id
}

resource "aws_lb_target_group_attachment" "main" {
  target_group_arn = aws_lb_target_group.main.arn
  target_id        = aws_instance.web.id
  port             = 8080
}

resource "aws_lb_listner" "http" {
  load_balancer_arn = aws_lb.main.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web.arn
  }
}