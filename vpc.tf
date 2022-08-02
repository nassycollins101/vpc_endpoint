resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "collins_testing_vpc"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

}

# resource "aws_network_interface" "collins_ni" {
#   subnet_id   = aws_subnet.my_subnet.id
#   private_ips = ["10.0.1.100"]

#   tags = {
#     Name = "primary_network_interface"
#   }
# }