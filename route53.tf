resource "aws_route53_record" "jenkis2" {
  zone_id = "ZN0UYD2WE8CWJ"
  name    = "dev.indyreliable.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_eip.lb.public_ip}"]
}