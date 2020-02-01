provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}

terraform {
  backend "s3" {
    bucket = "terraform-back-01"
    key    = "backend/terraform.tfstate"
    region = "us-west-2"
    access_key = ""
    secret_key = ""    
  }
}

