
resource "aws_instance" "my-machine" {
  ami = var.ami
  instance_type = var.instance_type
   subnet_id     = " subnet-06de6c089b7d56a9b "
  tags = {
    Name = "my-ec2-machine"
  }
}
