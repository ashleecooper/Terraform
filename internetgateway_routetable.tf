# Create Internet Gateway
resource "aws_internet_gateway" "ig_acoop18" {
  tags = {
    Name = "internet_gateway_acoop18"
  }
  vpc_id = aws_vpc.acoop18.id
}

# Create Route Table
resource "aws_route_table" "route_table_acoop18" {
  tags = {
    Name = "route_table_acoop18"
  }
  vpc_id = aws_vpc.acoop18.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig_acoop18.id
  }
}

# Create Route Table Association
resource "aws_route_table_association" "route_table_association1_acoop18" {
  subnet_id      = aws_subnet.public_subnet1a_acoop18.id
  route_table_id = aws_route_table.route_table_acoop18.id
}

resource "aws_route_table_association" "route_table_association2_acoop18" {
  subnet_id      = aws_subnet.public_subnet1b_acoop18.id
  route_table_id = aws_route_table.route_table_acoop18.id
}
