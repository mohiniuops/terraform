provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
resource "aws_instance" "terraform_ec2_implicit" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
resource "aws_eip" "ip" {
  vpc      = true
  instance = aws_instance.terraform_ec2_implicit.id
}
