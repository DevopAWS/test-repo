resource "aws_instance" "web" {
  ami           = var.ami-id
  instance_type = var.instance_type
  #vpc_security_group_ids= [aws_security_group.roboshop.id]
}



#route 53 records
# resource "aws_route53_record" "www" {
#   zone_id = var.zone_id
#   name    = var.ip-name
#   type    = "A"
#   ttl     = 1
#   records = [aws_eip.lb.public_ip]
# }