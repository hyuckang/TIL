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