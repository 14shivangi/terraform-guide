provider "aws" {
    region = "ap-south-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0abc0000000000000"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-000000000000000000"
    key_name = "aws_signup"
}
