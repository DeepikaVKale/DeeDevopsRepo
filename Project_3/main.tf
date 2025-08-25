provider "aws" {
    region = ""
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "ec2" {
    ami = "ami-0731becbf832f281e"
    instance_type = "t3a.xlarge"
    security_groups = [ "default" ]
    key_name = "project"
    root_block_device {
      volume_size = 30
      volume_type = "gp3"
      delete_on_termination = true
    }
    tags = {
      Name = "admin-server"
    }
    #user_data = file("server-script.sh")
}

output "PublicIP" {
  value = aws_instance.ec2.public_ip
}