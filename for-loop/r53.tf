resource "aws_route53_record" "www" {
 count = 4
 zone_id = var.zone_id
 name    =  "${each.key}.${var.domain_name}"
 type    = "A"

 records = [each.value.private_ip]
}



