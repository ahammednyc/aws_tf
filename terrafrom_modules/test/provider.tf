terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.7.0"
    }
  }
}

provider "aws" {
  region = "ap-south-2"
}

terraform {
  backend "s3" {
    bucket = "sample-tf-41254"
    key    = "test-env/tf-backend-test-env"
    region = "us-east-2"
  }
}