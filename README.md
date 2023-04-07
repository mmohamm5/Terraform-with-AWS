# Terraform-with-AWS
Install AWS EC2 instances through Terraform.
# Prerequisites
# AWS CLI Installed
The AWS Command line interface (AWS CLI) is a unified tool to manage your AWS services. With just one tool to download and configure, you can control multiple AWS services from the command line and automate them through scripts.
# AWS IAM user
IAM (Identity Acccess Management). It is a web service that help you securely control access to AWS resources. You use IAM to control who is authenticated (signed in) and authorized (has permissions) to use resources.


In order to connect your AWS account and Terraform. You need the access keys and secret access keys exported to your machine.

export AWS_ACCESS_KEY_ID=<access key>
export AWS_ACCESS_KEY=<secret access key>
# Install required providers
terraform {
 required_providers {
  aws={
  source = "hasicorp/aws"
  version = "~>4.16"
  
