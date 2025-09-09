resource "aws_instance" "web" {
  ami           = "ami-0c94855ba95c71c99" # Ubuntu 20.04 (example)
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  tags = {
    Name = "DemoEC2"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}