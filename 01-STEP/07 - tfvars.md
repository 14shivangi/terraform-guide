# Terraform `.tfvars`

In Terraform, files with the .tfvars extension are used to provide actual values for the input variables defined in your Terraform configuration.

Instead of writing values directly inside your .tf files, you keep them separately in .tfvars files.

  - Why do we use  `.tfvars`  files?

1. **Separation of Configuration from Code**: Separate Configuration from Code
Variables make Terraform reusable. By storing values in .tfvars files, the same Terraform code can be used in multiple environments like dev, test, or prod without rewriting anything.

2. **Keep Sensitive Data Safe**: `.tfvars` You can store confidential values (like passwords, API keys, or access tokens) in .tfvars files and avoid pushing them to version control. This reduces the risk of exposing secrets publicly.

3. **Reusability Across Projects**: One Terraform configuration can work for several use cases — only the values change. .tfvars files allow you to easily switch settings based on the situation.

5. **Better Team Collaboration**: Each developer can create their own .tfvars file with local settings. This prevents conflicts and keeps the main code neat and clean.


Here's how you typically use `.tfvars` files

1. Define your input variables in your Terraform code (e.g., in a `variables.tf` file).

2. Create one or more `.tfvars` files, each containing specific values for those input variables.

3. When running Terraform commands (e.g., terraform apply, terraform plan), you can specify which .tfvars file(s) to use with the -var-file option:

```
terraform apply -var-file=dev.tfvars
```

By using `.tfvars` files, you can keep your Terraform code more generic and flexible while tailoring configurations to different scenarios and environments.
