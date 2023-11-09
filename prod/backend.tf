terraform {
  backend "s3" {
    bucket         = "state-terraform-pragmatic-nik"
    key            = "prod/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

