resource "aws_instance" "web" {
  #count = 11
  count = length(var.instance_name)
  ami           = var.ami-id
  instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "mysql" || var.instance_name[count.index] == "shipping" ? "t3.small" : "t2.micro"
  tags = {
    Name = var.instance_name[count.index]
  }
  }

#route 53 records
  resource "aws_route53_record" "www" {
  #count = 11
  count = length(var.instance_name)
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.ip-name}"
  type    = "A"
  ttl     = 1
  records = [var.instance_name[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}

