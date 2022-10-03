terraform {
  backend "s3" {
    bucket = "amir-terraform-backend"
    key    = "network/terraform.tfstate"
    region = "ap-southeast-1"
  }
}
