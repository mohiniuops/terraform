resource "aws_key_pair" "example" {
  key_name   = "examplekey"
  public_key = file("~/.ssh/id_rsa.pub")
}
resource "aws_instance" "terraform_ec2_local" {
  key_name      = aws_key_pair.example.key_name
  ami           = "ami-2757f631"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.terraform_ec2_local.public_ip} >ipaddress.txt"
  }
}

