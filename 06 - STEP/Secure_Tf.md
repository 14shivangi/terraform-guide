# Ways to Secure Terraform

Managing **sensitive information** (such as passwords, API keys, and secrets) is a critical part of working with Terraform. Below are the **most common and recommended ways** to secure Terraform configuration files and state:

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
```

##### ⚠️ Note: Sensitive values are still stored in the Terraform state file, so state security is essential.

---

##  2. Use a Secret Management System (Best Practice)

Instead of hardcoding secrets, store them in a **dedicated secret management system**.

### Popular options
- **HashiCorp Vault**
- **AWS Secrets Manager**

### ✅ Benefits
- Centralized secret storage  
- Automatic secret rotation  
- Fine-grained access control  

### Example
```hcl
data "vault_generic_secret" "aws_access_key_id" {
  path = "secret/aws/access_key_id"
}

variable "aws_access_key_id" {
  value = data.vault_generic_secret.aws_access_key_id.value
}
```
---
## 3. Use a Secure Remote Backend (Encrypt State)

Terraform state files may contain **plain-text secrets**, so storing them securely is very important.

### Recommended backends
- **Terraform Cloud**
- **Amazon S3** (with encryption and IAM)

### ✅ Advantages
- Encrypted state storage  
- State locking and versioning  
- Better team collaboration  

#### Example
```hcl
terraform encrypt
```

##### 🔐 NOTE:  Always enable server-side encryption and restrict access using IAM policies.
---

##  4. Use Environment Variables

Environment variables provide a **simple and secure** way to pass sensitive values to Terraform.

###  Why use them?
- Secrets are not stored in `.tf` files  
- Easy to integrate with CI/CD pipelines  

###  Step 1: Set the environment variable
```bash
export AWS_ACCESS_KEY_ID=YOUR_ACCESS_KEY_ID
```

### Step 2: Read it in Terraform
```
variable "aws_access_key_id" {
  source = "env://AWS_ACCESS_KEY_ID"
}
```
---
