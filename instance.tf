
##### step create the virtual machine


##### step create the virtual machine 
resource "aws_instance" "web" {
  ami                    = data.aws_ami.ubuntu.id
  key_name               = aws_key_pair.demokpp.key_name
  vpc_security_group_ids = ["${aws_security_group.demosg.id}"]
  instance_type          = local.instance_type_name
  user_data              = file("${path.module}/script.sh")
  subnet_id              = aws_subnet.mysubnet.id
  availability_zone      = "ap-south-1a"
  tags                   = local.main_tags
}

