terraform {
        required_providers {
        aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
}
}
required_version = ">= 1.2.0"
}

provider "aws" {
region = "us-east-1"
}

locals {
        instances = toset(["Shawon","Mohammad","Nur","Md"])
}

resource "aws_instance" "aws_ec2_test" {
        for_each = local.instances
        ami = "ami-06e46074ae430fba6"
        instance_type = "t2.micro"
        tags = {
     Name = each.key
  }
}
