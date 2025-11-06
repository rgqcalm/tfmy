
#### step create the security group 
resource "aws_security_group" "demosg" {
  vpc_id      = aws_vpc.myvpc.id
  name        = local.security_group_name
  description = "provide the sg"
  dynamic "ingress" {
    for_each = [22, 3389, 80]
    iterator = port

    content {
      from_port   = port.value
      to_port     = port.value
      description = "port 22 enable"
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port   = "0"
    to_port     = "0"
    description = "port all enable"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_eip" "myeip" {
  instance   = aws_instance.web.id
  depends_on = [aws_internet_gateway.myig]
}

