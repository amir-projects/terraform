terraform {
  backend "s3" {
    bucket = "amir-terraform-backend"
    key    = "network/s3-state-lock.tfstate"
    region = "ap-southeast-1"
    dynamodb_table = "terraform-state-locking"
  }
}


resource "time_sleep" "wait_150_seconds" {

  create_duration = "150s"
}
