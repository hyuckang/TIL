resource "aws_vpc" "main" {
  cidr_block = "10.100.0.0/16"

  tags = {
    Name = "${var.project_name}_main_vpc"
  }
}

resource "aws_subnet" "main_pu_web_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.100.1.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "${var.project_name}_main_pu_web_a"
  }
}

resource "aws_subnet" "main_pr_app_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.100.2.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "${var.project_name}_main_pr_app_a"
  }
}

resource "aws_subnet" "main_pr_db_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.100.3.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "${var.project_name}_main_pr_db_a"
  }
}

resource "aws_subnet" "main_pu_web_c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.100.4.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "${var.project_name}_main_pu_web_c"
  }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.project_name}_main_igw"
  }
}

