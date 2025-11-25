# Terraform `.tfvars`

In Terraform, files with the .tfvars extension are used to provide actual values for the input variables defined in your Terraform configuration.

Instead of writing values directly inside your .tf files, you keep them separately in .tfvars files.

  -  **Why do we use  `.tfvars`  files?*

1. **Separation of Configuration from Code**: Separate Configuration from Code
Variables make Terraform reusable. By storing values in .tfvars files, the same Terraform code can be used in multiple environments like dev, test, or prod without rewriting anything.

2. **Keep Sensitive Data Safe**: `.tfvars` You can store confidential values (like passwords, API keys, or access tokens) in .tfvars files and avoid pushing them to version control. This reduces the risk of exposing secrets publicly.

3. **Reusability Across Projects**: One Terraform configuration can work for several use cases — only the values change. .tfvars files allow you to easily switch settings based on the situation.

5. **Better Team Collaboration**: Each developer can create their own .tfvars file with local settings. This prevents conflicts and keeps the main code neat and clean.


- **Here's how you typically use `.tfvars` files**

1. Declare variables in Terraform code — for example, in variables.tf
2. Create a .tfvars file to assign values to those variables
3. While executing Terraform commands, specify which .tfvars file to load:
   
```
terraform apply -var-file=dev.tfvars
```


## Summary
`.tfvars` files help you:

-  Keep variable values separate from Terraform code
-  Protect sensitive information
-  Reuse the same configuration for different environments
-  Work smoothly as a team

By using `.tfvars` files, you can keep your Terraform code more generic and flexible while tailoring configurations to different scenarios and environments.
