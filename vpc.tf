
### create the vpc 
resource "aws_vpc" "myvpc" {
  cidr_block = local.varpc_cidr
  tags       = local.main_tags
}

### creation of subnet 
resource "aws_subnet" "mysubnet" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = local.varsubnet_cidr
  availability_zone = "ap-south-1a"
  tags              = local.subnet_tags
}

#### creation of ig 
resource "aws_internet_gateway" "myig" {
  vpc_id = aws_vpc.myvpc.id
  tags   = local.main_tags
}

### creation of route table 
resource "aws_route_table" "myrt" {
  vpc_id = aws_vpc.myvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myig.id
  }
  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = aws_internet_gateway.myig.id
  }
  tags = local.rt_tags
}

### subnet assoication 
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.mysubnet.id
  route_table_id = aws_route_table.myrt.id
}
