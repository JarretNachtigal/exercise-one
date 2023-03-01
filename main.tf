terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.45.0"
    }

    aws = {
      source = "hashicorp/aws"
      version = "4.56.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# aws vpc
resource "aws_vpc" "test" {
  cidr_block = "10.0.0.0/16"
}

resource "azurerm_resource_group" "test_resource_group" {
  name     = "test"
  location = "West Europe"
  tags = "thisisatag"
}