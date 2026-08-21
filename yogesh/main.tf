terraform {
  required_providers {
  aws = {
    source = "hashicorp/aws"
  
    }
  }
  backend "s3" {
    bucket = "yogesh528 "
    key = "backend/copy1.jpeg"
    region = "ap-south-1"

  }
}




resource "aws_instance" "awsserver1" {
    
    ami = "ami-0d690cf6695b0511a"
    instance_type = "t3.micro"
    key_name = "linux"

    tags = {
      Name = "sandeep"
    }

} 

resource "aws_instance" "awsserver2" {
  ami = "ami-0d690cf6695b0511a"
  instance_type = "t3.micro"
  key_name = "linux"


  tags = {
    Name = "vikram" 

  }

}