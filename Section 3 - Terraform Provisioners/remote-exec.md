#Final Code:
```
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region     = "ap-southeast-1"

}


resource "aws_instance" "myec2" {
   ami = "ami-0ca285d4c2cda3300"
   instance_type = "t2.micro"
   key_name = "terraform-key"

   connection {
   type     = "ssh"
   user     = "ec2-user"
   private_key = file("./terraform-key.pem")
   host     = self.public_ip
    }

 provisioner "remote-exec" {
   inline = [
     "sudo amazon-linux-extras install -y nginx1",
     "sudo systemctl start nginx"
   ]
 }
}
```
```
terraform init
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve
```
