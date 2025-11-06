#### step create the key pair 
resource "aws_key_pair" "demokpp" {
  key_name   = local.key_pair_name
  public_key = file("${path.module}/id_rsa.pub")
}