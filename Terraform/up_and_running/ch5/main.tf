# count 매개변수 : 리소스를 반복
# for_each 표현식 : 리소스 내에서 리소스 및 인라인 블록을 반복
# for 표현식 : 리스트와 맵을 반복
# for 문자열 지시어 : 문자열 내에서 리스트와 맵을 반복

provider "aws" {
    region = "us-east-2"
}

