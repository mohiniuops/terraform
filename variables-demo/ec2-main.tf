provider "aws" {
  profile = "default"
  region  = var.region 
}
resource "aws_instance" "terraform_ec2" {
  ami           = var.amis[var.region]
  instance_type = "t2.micro"
}
resource "aws_eip" "ip" {
  vpc      = true
  instance = aws_instance.terraform_ec2.id
}

output "region" {
value = var.region
}
