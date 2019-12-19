resource "aws_route53_record" "www" {
  zone_id = "Z32OHGRMBVZ9LR"
  name    = "www.acirrustech.com"
  type    = "A"
  ttl     = "60"
  records = [aws_instance.web.*.public_ip]
}