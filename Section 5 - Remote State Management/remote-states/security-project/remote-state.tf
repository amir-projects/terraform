data "terraform_remote_state" "eip" {
  backend = "s3"

  config = {
    bucket = "amir-terraform-backend"
    key    = "network/eip.tfstate"
    region = "ap-southeast-1"
    }
  }
