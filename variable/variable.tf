variable "instance-id" {
  type = string
  default =  "ami-081609eef2e3cc958" 
}

variable "instance-type" {
  type = string
  default = "t3.micro"  
}

variable "tags" {
  type = map  
  default = {
    Name = "Hello Terraform"
    Project = "roboshop"
    Environment = "Dev"
    Component = "web"
    Terraform = "true"  
  }  
  
}

variable "sg-name" {
  type = string
  default = "roboshop_all_aws" 
  
}

variable "sg-description" {
  type = string
  default = "Allow inbond traffic"  
  
}

variable "inbond-from-port" {
  type = number
  default = "0"  
  
}


variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}