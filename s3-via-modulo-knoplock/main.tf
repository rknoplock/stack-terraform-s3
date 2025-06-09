terraform {
  backend "s3" {
    bucket = "rknoplock-remote-state"          # Seu bucket para armazenar o state
    key    = "s3-buckets/bucket.tfstate"  # Caminho do arquivo state dentro do bucket
    region = "us-east-1"                  # Região do bucket
  }
}

provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source = "git::https://github.com/rknoplock/module-terraform-s3.git?ref=v0.0.3"

  bucket_name = "s3-via-modulo-knoplock"

  tags = {
    ambiente = "dev"
    projeto  = "logs"
  }
}
