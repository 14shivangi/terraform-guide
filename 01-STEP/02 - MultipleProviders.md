# Multiple Providers

You can use multiple providers in one single terraform project. For example,


1. Create a providers.tf file in the root directory of your Terraform project.
2. In the providers.tf file, define the AWS providers. For example:


```
provider "aws" {
  region = "us-east-1"
}

```

3. In your other Terraform configuration files, you can then use the aws providers to create resources in AWS,

```
resource "aws_instance" "example" {
  ami = "ami-0000000000000000"
}

```
<img width="984" height="770" alt="Image" src="https://github.com/user-attachments/assets/6580fbb0-b9a9-4cf8-a63c-f9c6dd8d06f5" />
