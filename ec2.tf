resource "aws_instance" "collins_instance1" {
  ami                    = "ami-090fa75af13c156b4"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.my_subnet.id
  vpc_security_group_ids = [aws_security_group.sg1.id]
}

resource "aws_instance" "collins_instance2" {
  ami                    = "ami-090fa75af13c156b4"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.my_subnet.id
  vpc_security_group_ids = [aws_security_group.sg1.id]
}

resource "aws_instance" "collins_instance3" {
  ami                    = "ami-090fa75af13c156b4"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.my_subnet.id
  vpc_security_group_ids = [aws_security_group.sg1.id]
}

resource "aws_security_group" "sg1" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    type = "terraform-test-security-group"
  }
}