# Lab 1: Create an EC2 instance

Docs: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build

## Run this lab
1. `terraform init` or `terraform get`
```cmd
D:\IaC__TerraformWithAWSBestPractice\lab1>terraform init
Initializing the backend...
Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 3.27"...
- Installing hashicorp/aws v3.76.1...
- Installed hashicorp/aws v3.76.1 (signed by HashiCorp)
Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```
2. `terraform plan`
```cmd
D:\IaC__TerraformWithAWSBestPractice\lab1>terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.lab1_ec2 will be created
  + resource "aws_instance" "lab1_ec2" {
      + ami                                  = "ami-0866a3c8686eaeeba"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "Lab 1 - Demo EC2"
        }
      + tags_all                             = {
          + "Name" = "Lab 1 - Demo EC2"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + root_block_device (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
```
3. `terraform apply`
```cmd
D:\IaC__TerraformWithAWSBestPractice\lab1>terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.lab1_ec2 will be created
  + resource "aws_instance" "lab1_ec2" {
      + ami                                  = "ami-0866a3c8686eaeeba"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "Lab 1 - Demo EC2"
        }
      + tags_all                             = {
          + "Name" = "Lab 1 - Demo EC2"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + root_block_device (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.lab1_ec2: Creating...
aws_instance.lab1_ec2: Still creating... [10s elapsed]
aws_instance.lab1_ec2: Still creating... [20s elapsed]
aws_instance.lab1_ec2: Still creating... [30s elapsed]
aws_instance.lab1_ec2: Still creating... [40s elapsed]
aws_instance.lab1_ec2: Creation complete after 41s [id=i-07682beab4df40ef3]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```
4. `terraform destroy`
```cmd
D:\IaC__TerraformWithAWSBestPractice\lab1>terraform destroy
aws_instance.lab1_ec2: Refreshing state... [id=i-07682beab4df40ef3]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.lab1_ec2 will be destroyed
  - resource "aws_instance" "lab1_ec2" {
      - ami                                  = "ami-0866a3c8686eaeeba" -> null
      - arn                                  = "arn:aws:ec2:us-east-1:529088273455:instance/i-07682beab4df40ef3" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-east-1a" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-07682beab4df40ef3" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - primary_network_interface_id         = "eni-0e0bbdc9f38d3a975" -> null
      - private_dns                          = "ip-172-31-41-206.ec2.internal" -> null
      - private_ip                           = "172.31.41.206" -> null
      - public_dns                           = "ec2-3-89-204-206.compute-1.amazonaws.com" -> null
      - public_ip                            = "3.89.204.206" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "default",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-0c212070e2bf9194a" -> null
      - tags                                 = {
          - "Name" = "Lab 1 - Demo EC2"
        } -> null
      - tags_all                             = {
          - "Name" = "Lab 1 - Demo EC2"
        } -> null
      - tenancy                              = "default" -> null
      - vpc_security_group_ids               = [
          - "sg-0668b3716424c06da",
        ] -> null
        # (5 unchanged attributes hidden)

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_put_response_hop_limit = 2 -> null
          - http_tokens                 = "required" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/sda1" -> null
          - encrypted             = false -> null
          - iops                  = 3000 -> null
          - tags                  = {} -> null
          - throughput            = 125 -> null
          - volume_id             = "vol-01499b587d2e7cb5f" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp3" -> null
            # (1 unchanged attribute hidden)
        }
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_instance.lab1_ec2: Destroying... [id=i-07682beab4df40ef3]
aws_instance.lab1_ec2: Still destroying... [id=i-07682beab4df40ef3, 10s elapsed]
aws_instance.lab1_ec2: Still destroying... [id=i-07682beab4df40ef3, 20s elapsed]
aws_instance.lab1_ec2: Still destroying... [id=i-07682beab4df40ef3, 30s elapsed]
aws_instance.lab1_ec2: Still destroying... [id=i-07682beab4df40ef3, 40s elapsed]
aws_instance.lab1_ec2: Still destroying... [id=i-07682beab4df40ef3, 50s elapsed]
aws_instance.lab1_ec2: Destruction complete after 52s

Destroy complete! Resources: 1 destroyed.
```