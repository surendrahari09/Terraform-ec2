output "ec2_arn" {
   value = aws_instance.my-machine.arn
}
output "instance_ip_addr" {
  value       = aws_instance.my-machine.public_ip
  description = "The public IP address of the main server instance."
}
