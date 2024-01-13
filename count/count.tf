resource "aws_instance" "web" {
  ami = var.instance-id
  count = 11 # length(count = var.instance-names)
  instance_type = var.instance-names[count.index] == "mongodb" || var.instance-names[count.index]  == "mysql" || var.instance-names[count.index] == "shipping" ? "t3.small" : "t2.micro"
  #vpc_security_group_ids = [aws_security_group.roboshop_all.id]
  tags = {
     Name = var.instance-names[count.index]
 }
}

resource "aws_route53_record" "www" {
  count = 11  # length(count = var.instance-names)
  zone_id = var.zone-id
  name    = "${var.instance-names[count.index]}.${var.domain-name}"
  type    = "A"
  ttl     = 1
  records = [var.instance-names[count.index] == "web" ? aws_instance.web[count.index].public_ip :
  aws_instance.web[count.index].private_ip]
} 