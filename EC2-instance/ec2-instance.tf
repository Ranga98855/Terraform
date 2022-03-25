provider {
    region     = "ap-south-1"
    access_key = "IAM user access key"
    secret_key = "IAM user secret key"
}
resource "aws_instance" "myinstance-1" {
    ami             = "amazon-linux-ami id"
    instance_tppe   = "t2.micro"

    tags = {
        Name = myinstance-1"
    }
}
resource "aws_instance" "myinstance-2" {
    ami             = "amazon-linux-ami id"
    instance_tppe   = "t2.micro"

    tags = {
        Name = myinstance-2"
    }
}

