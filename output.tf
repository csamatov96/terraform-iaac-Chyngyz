output "bucket_name" {
    value = aws_s3_bucket.s3bucket.bucket
}

output "sec_group" {
    value = aws_security_group.sec_group.name #resource name -> actual name
}

output "key_name" {
    value = aws_key_pair.key_resource.key_name
}

output "wordpress" {
    value = aws_route53_record.www.name
}

#output "wordpress_username" {
#    value = "some_username"
#}
#output "wordpress_password" {
#    value = "password"
#}

output "IPs" {
    value = aws_instance.web.*.public_ip
}

output "instance_az" {
    value = aws_instance.availability_zone
}

output "instance_dns" {
  value = aws_instance.public_dns
}

output "route53" {
  value = aws_route53_record.fqdn
}

