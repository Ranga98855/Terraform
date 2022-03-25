provider {
    region     = "ap-south-1"
    access_key = "IAM user access key"
    secret_key = "IAM user secret key"
}
resource "aws_instance" "myinstance" {
    ami = "ami-id"
    instance_type = "t2.micro"

    tags = {
        Name = "myinstance"
    }
}
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}
resource "aws_security_group" "allow_tls" {
    name = "allow_tls"
    description = "Allow TLS inbound traffic"
    vpc_id = aws_default_vpc.default.id

    ingress {
      description      = "TLS from VPC"
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = [aws_vpc.main.cidr_block]
      ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

    egress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}