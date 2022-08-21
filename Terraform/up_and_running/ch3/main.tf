provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "hyuckang-tf-state"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "hyuckang-tf-state-locks"
    encrypt        = true
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "hyuckang-tf-state"

  lifecycle {
    prevent_destroy = true
  }

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "hyuckang-tf-state-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

output "s3_bucket_arn" {
    value = aws_s3_bucket.terraform_state.arn
    description = "The ARN of the S3 bucket"
}

output "dynamodb_table_name" {
    value = aws_dynamodb_table.terraform_locks.arn
    description = "The name of the DynamoDB table"
}