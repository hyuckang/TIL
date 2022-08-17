# count 매개변수 : 리소스를 반복
# for_each 표현식 : 리소스 내에서 리소스 및 인라인 블록을 반복
# for 표현식 : 리스트와 맵을 반복
# for 문자열 지시어 : 문자열 내에서 리스트와 맵을 반복

provider "aws" {
    region = "us-east-2"
}

resource "aws_iam_user" "example" {
    name = "example_user"
}

resource "aws_iam_user" "count_example" {
    count = 3
    name = "neo.${count.index}"
}

variable "user_names_list" {
    description = "Create IAM users with these names"
    type = list(string)
    default = ["neo", "trinity", "morpheus"]
}

resource "aws_iam_user" "count_var_example" {
    count = length(var.user_names_list)
    name = var.user_names_list[count.index]
}

output "neo_arn" {
    value = aws_iam_user.count_var_example[0].arn
    description = "The ARN for user Neo"
}

output "all_arns" {
    value = aws_iam_user.count_var_example[*].arn
    description = "The ARNs for all users"
}