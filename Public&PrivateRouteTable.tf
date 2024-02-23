#Create Public and Private Route Tables
resource "aws_route_table" "RB_Public_RouteTable" {
  vpc_id = aws_vpc.dev_vpc.id

  route {
    cidr_block = var.CIDR_BLOCK
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "PublicRT1"
  }
}

resource "aws_route_table" "RB_Private_RouteTable" {
  vpc_id = aws_vpc.dev_vpc.id

  route { 
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "PrivateRT1"
  }
}