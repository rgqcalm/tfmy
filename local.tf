locals {
  main_tags = {
    Name = "devoct2525"
    Team = "dev_terraform_team"
  }
  subnet_tags = {
    Name = "dev_subnet"
  }
  rt_tags = {
    Name = "dev_rt"
  }
  #  instance_type_id   = "t3.micro"
  #  security_group_tag = "dempsgnameoct25"
  key_pair_name       = var.key_pair
  security_group_name = var.security_group_name
  instance_type_name  = var.instance_type_name
  #ami_name            = var.ami_name
  varpc_cidr          = var.vpc_cidr
  varsubnet_cidr      = var.subnet_cidr

}
