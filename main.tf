
resource "aws_instance" "my-machine" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.publicsubnets.id
  tags = {
    Name = "my-ec2-machine"
  }
}
