resource "aws_instance" "ec2" {
    ami           = var.ami_id
    instance_type = var.instance_type
    subnet_id     = var.subnet_id
    key_name      = var.key_name
    security_groups = var.security_groups

    root_block_device {
        volume_size           = var.volume_size
        volume_type           = var.volume_type
        delete_on_termination = true
    }

    tags = {
        Name = "${var.instance_name}"
    }
}