resource "aws_security_group" "allow_web_traffic" {
  vpc_id = aws_vpc.main.id

  ingress {
    description = "allow_http"
    from_port   = 80
    to_port     = 80
    cidr_block  = ["0.0.0.0/0"]
  }

  ingress {
    description = "allow_https"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_block  = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_all_outbound_traffic" {
  vpc_id = aws_vpc.main.id

  egress {
    description = "allow_outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_block  = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_app_traffic" {
  vpc_id = aws_vpc.main.id

  ingress {
    description     = "allow_app"
    from_port       = 8080
    to_port         = 8080
    security_groups = [aws_security_group.allow_web_traffic.id]
  }
}