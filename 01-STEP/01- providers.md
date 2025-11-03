# Providers in terraform

A provider in Terraform is a plugin that allows Terraform to communicate with different platforms and services through their APIs.
These can include cloud platforms (like AWS, Azure, GCP), SaaS applications, or any other service with an API.

Providers are defined inside your Terraform configuration files to tell Terraform which platform or service it should work with.

For example, if you want to create a virtual machine on AWS, you would use the AWS provider.
This provider gives Terraform access to AWS resources, allowing it to create, manage, and delete them as needed.

Here’s an example of how to configure the AWS provider in Terraform:

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0" # Change the AMI 
  instance_type = "t2.micro"
}
```
