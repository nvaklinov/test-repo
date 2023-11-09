terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.24.0"
    }
  }
}

provider "aws" {
  region="eu-central-1"
}

module "ecr" {
  source = "../modules/ecr"
  env = "prod"
}
