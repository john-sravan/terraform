variable "instance-names" {
  type    = list  
  default = ["mangodb", "redis", "mysql", "rabbitmq", "catalouge", "user", "cart", "shipping", "payment", "dispatch", "web"]
}



variable "instance-id" {
  type = string
  default =  "ami-081609eef2e3cc958" 
  
}

variable "zone-id" {
  default = "Z0210024GWKUBWI2UOXD"  
  
}

variable "domain-name" {
  default = "sravanraj.xyz"   
}