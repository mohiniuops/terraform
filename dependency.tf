provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  depends_on    = [aws_s3_bucket.example]
}
resource "aws_s3_bucket" "example" {
  bucket = "mohini-terraform-getting-started"
  acl    = "private"
}
