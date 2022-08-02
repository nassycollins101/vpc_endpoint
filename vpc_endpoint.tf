resource "aws_vpc_endpoint" "my_ec2" {
  vpc_id            = aws_vpc.my_vpc.id
  service_name      = "com.amazonaws.us-east-1.ec2"
  vpc_endpoint_type = "Interface"

    security_group_ids = [
      aws_security_group.sg1.id,
    ]

#   private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "endpoint_subnet_association" {
  vpc_endpoint_id = aws_vpc_endpoint.my_ec2.id
  subnet_id       = aws_subnet.my_subnet.id
}