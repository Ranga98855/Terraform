provider {
    region     = "ap-south-1"
    access_key = "IAM user access key"
    secret_key = "IAM user secret key"
}
variable "instancetype" {
    default = "t2.micro"
}
variable "image" {
    default = "ami-id"
}
resource "aws_instance" "myinstance" {
    ami = var.image
    instance_type = var.instancetype

    tags = {
        Name = "myinstance"
    }
}