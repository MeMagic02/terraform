# Create private subnet
resource "aws_subnet" "private-1" {
  vpc_id     = aws_vpc.dev_vpc.id 
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "PrivateSubnet1" 
  }
}

# Create Private Subnet 2
resource "aws_subnet" "private-2" {
  vpc_id     = aws_vpc.dev_vpc.id 
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-west-2b"

  tags = {
    Name = "PrivateSubnet2" 
  }
}