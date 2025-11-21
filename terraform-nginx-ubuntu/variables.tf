#Inputs Variables

# AWS region
variable "region" {
  description = "AWS region to use"
  default     = "ap-northeast-3"
}

# EC2 instance type
variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

# tags applied to all AWS resources
variable "common_tags" {
  description = "Tags applied to all resources"
  type        = map(string)

  default = {
    Project     = "Terraform-Nginx-Ubuntu"
    Environment = "test"
    Owner       = "Robin"
    ManagedBy   = "Terraform"
  }
}
