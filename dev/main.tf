terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.24.0"
    }
  }
}

provider "aws" {
  region = local.region
}

module "ecr" {
  source = "../modules/ecr/"
  env    = local.env
}

module "vpc" {
  source = "../modules/vpc"
  env    = local.env
}
