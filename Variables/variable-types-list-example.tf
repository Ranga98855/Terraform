provider {
    region     = "ap-south-1"
    access_key = "IAM user access key"
    secret_key = "IAM user secret key"
}
variable "instancetype" {
    type = list
    default = ["t2.micro", "t2.small"]
}
variable "image" {
    type = list
    default = ["ami-id-1", "ami-id-2"]
}
variable
resource "aws_instance" "myinstance-1" {
    ami = var.image[0]
    instance_type = var.instancetype[0]

    tags = {
        Name = "myinstance-1[0]"
    }
}
resource "aws_instance" "myinstance-1" {
    ami = var.image[1]
    instance_type = var.instancetype[1]

    tags = {
        Name = "myinstance-2[1]"
    }
}