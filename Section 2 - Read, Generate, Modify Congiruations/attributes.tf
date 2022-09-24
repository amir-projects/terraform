# Undestanding Attributes
## Terraform has capability to output the attribute of a resource with the output values

provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region     = "ap-southeast-1"

}

resource "aws_eip" "lb" {
  vpc      = true
}

output "eip" {
  value = aws_eip.lb
}

resource "aws_s3_bucket" "mys3" {
  bucket = "amir-attribute-demo-240922"
}

output "mys3bucket" {
  value = aws_s3_bucket.mys3
}
