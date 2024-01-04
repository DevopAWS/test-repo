variable "ami-id" {
  #type    =  string
  default =  "ami-03265a0778a880afb"
}

# data "aws_ami" "centos8" {
#   owners = ["973714476881"]
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["Centos-8-DevOps-Practice"]
#   }
#   filter {
#     name   = "sroot-device-type"
#     values = ["EBS"]
#   }
#   filter {
#     name   = "Virtualization type"
#     values = ["hvm"]
#   }

# }

variable "instance_name" {
  type    =  list
  default =  ["mongodb","mysql","shipping","user","cart","reddis","rabbitmq","catalogue","payment","web","dispatch"]

}

variable "zone_id" {
  #type    =  string
  default =  "Z02572582AYLBU30KSIJ8"
}

variable "ip-name" {
  #type    =  string
  default =  "daws76.online"
}



