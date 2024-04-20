terraform {
  backend "s3" {
    bucket = "kazien-eldos"
    key    = "ohio/terraform.tf"
    region = "us-east-2"
  }
}
