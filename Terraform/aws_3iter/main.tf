resource "aws_instance" "app" {
  ami           = "ami-00000000000000000"
  instance_type = "t3.micro"

  vpc_security_group_ids = [aws_security_group.allow_app_traffic.id]
}

resource "aws_db_instance" "main" {
  allocated_storage    = 10
  engine               = "mariadb"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mariadb10.6"
  skip_final_snapshot  = true
}