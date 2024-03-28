terraform{
    required_providers {
      aws={
        source = "hashicorp/aws"
        version = "~>5.20.1"
      }
    }
}

  
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "example_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"

  tags = {
    Name = "Nicks Example Push"
  }
}
