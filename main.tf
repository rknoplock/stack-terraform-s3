provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source = "git::https://github.com/rknoplock/module-terraform-s3.git//?ref=v1.0.0"

  bucket_name = "meu-bucket-via-modulo"
  tags = {
    Environment = "rknoplock"
    Owner       = "Equipe SRE"
  }
}
