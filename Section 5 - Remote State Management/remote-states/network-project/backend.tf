terraform {
  backend "s3" {
    bucket = "amir-terraform-backend"
    key    = "network/eip.tfstate"
    region = "ap-southeast-1"
  }
}
