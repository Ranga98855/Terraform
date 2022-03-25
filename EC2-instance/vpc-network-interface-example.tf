provider {
    region     = "ap-south-1"
    access_key = "IAM user access key"
    secret_key = "IAM user secret key"
}
resource "aws_vpc" "my-vpc" {
    cidr_block = "172.16.0.0/16

    tags = {
        Name = "my-vpc"
    }
}
resource "aws_subnet" "my-subnet1" {
    vpc_id = aws_pvc.my-vpc.id
    cidr-block = "172.16.10.0/24"
    availability_zone = "ap-south-1a"

    tags = {
        Name = "my-subnet1"
    }
}
resource "aws_network_interface" "my-network" {
    subnet_id = aws_subnet.my-subnet1.id
    private_ips = ["172.16.10.100]

    tags = {
        Name = "primary-network-interface"
    }
}
resource "aws_instance" "myinstance" {
    ami = "ami-id"
    instance_type = "t2.micro"

    tags = {
        Name = "myinstance"
    }
}