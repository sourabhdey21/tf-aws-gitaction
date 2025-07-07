terraform {
  backend "s3" {
    bucket         = "tf-aws01"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}