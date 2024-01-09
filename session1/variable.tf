variable "sg-name" {
  type = string
  default = "roboshop-all-aws"
}

variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic"
}

variable "inbond-from-port" {
  default = "0" 
}

variable "cidr-blocks" {
  default = ["0.0.0.0/0"]
}

