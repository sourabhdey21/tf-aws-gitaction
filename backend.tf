terraform {
  backend "s3" {
    bucket         = "tf-aws-gitaction"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}