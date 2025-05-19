provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source      = "git::https://github.com/rknoplock/module-terraform-s3.git//?ref=v1.0.1"
  bucket_name = "meu-bucket-via-modulo"
  aws_region  = "us-east-1"
  tags = {
    Environment = "Prod"
    Owner       = "infra"
  }
}

