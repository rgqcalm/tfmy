data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical
 
  filter {
    name = "name"
    ####ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20251015
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
 
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
 
output "aws_ami_id" {
  value = data.aws_ami.ubuntu.id
}

