provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "hyuckang-tf-state"
    key    = "stage/data-stores/mysql/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "hyuckang-tf-state-locks"
    encrypt        = true
  }
}

resource "aws_db_instance" "example" {
  identifier_prefix = "hyuckang-tf-rds"
  engine            = "mysql"
  allocated_storage = 10
  instance_class    = "db.t2.micro"
  name              = "hyuckang_database"
  username          = "admin"
  /* password          = data.aws_secretsmanager_secret_version.db_password.secret_string */
  password = var.db_password
}

/*
data "aws_secretsmanager_secret_version" "db_password" {
  secret_id = "mysql-master-password-stage"
}
*/