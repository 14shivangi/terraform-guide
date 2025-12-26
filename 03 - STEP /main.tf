provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2instance" {
  instance_type = "t2.micro"
  ami = "ami-00000000001234abc" # change this
  subnet_id = "subnet-0000012345abcd" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "bucket-123-dynamo" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
