# Ways to Secure Terraform

Managing **sensitive information** (such as passwords, API keys, and secrets) is a critical part of working with Terraform. Below are the **most common and recommended ways** to secure Terraform configuration files and state.

---

##  1. Use the `sensitive` Attribute

Terraform provides a built-in **`sensitive` attribute** to protect variables and outputs.

### What it does
- Prevents sensitive values from being displayed in CLI output
- Masks values in `terraform plan` and `terraform apply`

###  Example
```hcl
variable "aws_access_key_id" {
  sensitive = true
}
