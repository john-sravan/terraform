resource "aws_instance" "web" {
  ami           = var.instance-id
  instance_type = var.instance-type
  vpc_security_group_ids = [aws_security_group.roboshop_all.id]

  tags = var.tags
}