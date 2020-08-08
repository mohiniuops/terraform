resource "aws_instance" "terraform_ec2" {
ami = "ami-2757f631"
instance_type = "t2.micro"
} 
