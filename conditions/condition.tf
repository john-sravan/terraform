resource "aws_instance" "web" {
  ami           = var.instance-id
  instance_type = var.instance-name == "MongoDB" ? "t3.small" : "t2.micro"
}