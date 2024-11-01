<h1 align="center">
IaC Practice with AWS and Terraform

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=for-the-badge&logo=powershell&logoColor=white)
</h1>

![image](https://hashicorp-terraform.awsworkshop.io/images/hashicorp/terraform/cloud/overview.png)

## Step 1: Setup AWS & Terraform

### AWS config [video tutorial](https://www.youtube.com/watch?v=9oYd5KQM8AQ)
1. Install AWS-CLI: (https://docs.aws.amazon.com/cli/v1/userguide/install-windows.html)
2. Configure AWS: `aws configure`
3. Check configure user: `aws sts get-caller-identity`

### Terraform config [video tutorial](https://www.youtube.com/watch?v=OYx0e4SMMuA)
1. Install terraform: Dowload from [Install Terraform](https://developer.hashicorp.com/terraform/install). Unzip to `C:/terraform`
2. Config environment variable: `C:/terraform`
3. Check cmd: `terraform -v`
4. Export AWS Access Key: `export AWS_ACCESS_KEY_ID={your access key here}`
5. Export AWS Secret Access Key: `export AWS_SECRET_ACCESS_KEY={your secret access key here}`
6. Extension VS Code: [Terraform](https://marketplace.visualstudio.com/items?itemName=4ops.terraform), [HashiCorp Terraform](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform)
7. AWS Docs: [https://registry.terraform.io/providers/hashicorp/aws/latest](https://registry.terraform.io/providers/hashicorp/aws/latest)

## Step 2: Create new or run a project
1. Create a new folder or `cd` to one
2. Run `terraform init`
3. Format code `terraform fmt -recursive`
4. Plan to see if anything prepare to run: `terraform plan`
5. Apply to run in the cloud `terraform apply`
6. (Optional) If you want to tear down the infrastructure created by Terraform when you completed, use `terraform destroy`

## Some docs
1. CLI command (https://www.terraform.io/cli/commands)
2. Systax create resources (https://www.terraform.io/language/resources/syntax)
3. Variable and Data (https://www.terraform.io/language/data-sources https://www.terraform.io/language/values/variables)
4. Module (https://www.terraform.io/language/modules/syntax)
5. AWS Terraform Docs: [https://registry.terraform.io/providers/hashicorp/aws/latest/docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

## Some reference
1. What is Terraform : https://community.aws/content/2ZCXPWGhX0arg0VsEz4DLa5bqXQ
2. Using Terraform to create AWS IoT Things : https://community.aws/content/2iJVs17s7drNneJiB9GdYrNszWw/using-terraform-to-create-aws-iot-things
3. S3 Bucket AWS from terraform: https://kodekloud.com/blog/how-to-create-aws-s3-bucket-using-terraform/
