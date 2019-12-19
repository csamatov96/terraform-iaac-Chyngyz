resource "aws_route53_record" "www" {
  zone_id = "Z6XWWD56QDJWX" #hosted zone ID
  name    = "www.csamatov.net"
  type    = "A"
  ttl     = "60"
  records = [aws_instance.ec2_instance[0].public_ip,aws_instance.ec2_instance[1].public_ip,aws_instance.ec2_instance[2].public_ip]
}