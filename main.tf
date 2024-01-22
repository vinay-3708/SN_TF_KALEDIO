terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  access_key = var.AWS_KEY
  secret_key = var.AWS_SECRET
}
resource "aws_vpc" "main_tf_cloud" {
  cidr_block = "10.0.0.0/16"
}

variable "AWS_KEY" {

}
variable "AWS_SECRET" {

}
