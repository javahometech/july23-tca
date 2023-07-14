resource "aws_instance" "web" {
    subnet_id = aws_subnet.main.*.id[0]
    ami = var.ami
    instance_type = "t2.micro"
    security_groups = [aws_security_group.web.id]
    user_data = file("./scripts/httpd.sh")
    associate_public_ip_address = true
    key_name = "prasad"
    tags = {
      Name = "web-tca"
    }
}