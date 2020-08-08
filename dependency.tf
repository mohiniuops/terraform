resource "aws_instance" "example_dependency" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  depends_on    = [aws_s3_bucket.example]
}
resource "aws_s3_bucket" "example" {
  bucket = "mohini-terraform-getting-started-example"
  acl    = "private"
}
