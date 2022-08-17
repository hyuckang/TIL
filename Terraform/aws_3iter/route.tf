resource "aws_route_table" "main_pu" {

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "${var.project_name}_main_pu"
  }
}

resource "aws_route_table" "main_pr" {
  tags = {
    Name = "${var.project_name}_main_pr"
  }
}

resource "aws_route_table_association" "main_pu_web_a" {
  subnet_id      = aws_subnet.main_pu_web_a
  route_table_id = aws_route_table.main_pu
}

resource "aws_route_table_association" "main_pu_web_c" {
  subnet_id      = aws_subnet.main_pu_web_c
  route_table_id = aws_route_table.main_pu
}

resource "aws_route_table_association" "main_pr_app_a" {
  subnet_id      = aws_subnet.main_pr_app_a
  route_table_id = aws_route_table.main_pr
}

resource "aws_route_table_association" "main_pr_db_a" {
  subnet_id      = aws_subnet.main_pr_db_a
  route_table_id = aws_route_table.main_pr
}