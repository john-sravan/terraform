resource "aws_instance" "web" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop_all.id]

  tags = {
    Name = "Hello-terraform"
  }
}

resource "aws_security_group" "roboshop_all" {
  name        = var.sg-name
  description = var.sg-description
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = var.inbond-from-port
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr-blocks
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "terraform-all-aws"
  }
}