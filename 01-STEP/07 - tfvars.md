##  Terraform `.tfvars` Files – Simple Explanation

In Terraform, `.tfvars` files are used to store **values for input variables** defined in your Terraform configuration.  
This helps keep your code clean, reusable, and secure.


####  Why do we use `.tfvars`?

####  Separate Configuration from Code
- No need to hardcode values in `.tf` files.
- Makes code more organized and reusable.

####  Store Sensitive Information
- Can store secrets (API keys, passwords).
- Better security by avoiding pushing secrets to Git.

#### Different Environments Support
  - Use different `.tfvars` files for:
  - Development (`dev.tfvars`)
  - Staging (`staging.tfvars`)
  - Production (`prod.tfvars`)

####  Easy Team Collaboration
- Each person can have their own `.tfvars` file.
- Avoids conflicts in shared code.

---

####  How `.tfvars` Works

 Step 1: Define variables in `variables.tf`

```hcl
variable "instance_type" {
  type = string
}
