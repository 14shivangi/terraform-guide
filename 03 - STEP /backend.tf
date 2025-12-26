terraform {
  backend "s3" {
    bucket         = "bucket-123-dynamo" # change this
    key            = "dynamo/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
