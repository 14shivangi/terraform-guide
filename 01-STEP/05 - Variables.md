# **Variables in Terraform**

Variables in Terraform are used to make your configurations **dynamic**, **reusable**, and **easy to manage**.  
They act like parameters that let you pass values into your Terraform configuration instead of hardcoding them.

---

## **Types of Variables in Terraform**

There are two main types of variables in Terraform:

- **Input Variables** – Used to provide values to your Terraform configuration.  
- **Output Variables** – Used to display or share values after your infrastructure is created.

---

## **1. Input Variables**

Input variables allow you to **customize configurations** without changing the code.  
They make it easier to **reuse** the same Terraform configuration with different environments (like dev, test, or prod).

### **Example:**

```hcl
variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

resource "aws_instance" "example" {
  ami           = "ami-0123456789abcdef0"
  instance_type = var.instance_type
}
