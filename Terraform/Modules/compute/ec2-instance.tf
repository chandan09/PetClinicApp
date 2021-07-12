resource "aws_instance" "example"{
    ami ="ami-00bf4ae5a7909786c"
    instance_type ="t2.micro"
    availability_zone = "ap-south-1a"
    key_name ="ec2"
    subnet_id = var.public_subnets
    associate_public_ip_address = true
    source_dest_check = false
    security_groups = [aws_security_group.SG_pub.id]
    user_data = data.template_file.user_data.rendered

    tags = {
    Name = "CI/CD BOX"
  }
    
}

data "template_file" "user_data" {
    template = file("../../Modules/compute/user_data.sh")
}

resource "aws_instance" "private_instance"{
    ami ="ami-00bf4ae5a7909786c"
    instance_type ="t2.micro"
    availability_zone = "ap-south-1a"
    key_name ="ec2"
    subnet_id = var.private_subnets
    associate_public_ip_address = false
    source_dest_check = false
    security_groups = [aws_security_group.ssh_priv.id]
    user_data = data.template_file.deploy_server_data.rendered

    tags = {
    Name = "Tomcat Server"
  }
    
}

data "template_file" "deploy_server_data" {
    template = file("../../Modules/compute/deploy_server_data.sh")
}
