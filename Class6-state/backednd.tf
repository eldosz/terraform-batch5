terraform {
  backend "s3" {
    bucket = "kazien-eldos"
    key    = "ohio/terraform.tfstate"
    region = "us-east-2"
    dynamoDB_table = "lock-state"
  }
}


