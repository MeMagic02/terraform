# Create private subnet
resource "aws_subnet" "private-1" {
  vpc_id     = aws_vpc.dev_vpc.id 
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "deham10" 
  }
}