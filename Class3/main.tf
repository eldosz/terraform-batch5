# provider aws {

#     region = "us-east-2"
# }
# data "aws_ami" "anynameldos" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }
# resource "aws_instance" "web" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t2.micro"
# #   availability_zone = "us-east-2a"
#   subnet_id     = "subnet-035ca941631ba566d"

#   tags = {
#     Name = "HelloWorld"
#   }
# }







provider aws {
    region = "us-east-2"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  #availability_zone = "us-east-2a"
#   subnet_id = "subnet-035ca941631ba566d"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  key_name = aws_key_pair.deployer.key_name
count = 3
user_data=file("apache.sh")
user_data_replace_on_change = true
tags= local.common_tags
}

output ec2 {
  value       = aws_instance.web[0].public_ip

}
