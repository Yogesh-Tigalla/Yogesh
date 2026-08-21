

resource "aws_security_group" "web_traffic" {
  name        = "allow_web_traffic"
  description = "Allow inbound SSH and HTTP traffic, and all outbound traffic"
  
  
  ingress {
    description = "Allow SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  ingress {
    description = "Allow HTTP from anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]


  }

  
  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" 
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "awsuser" {
  ami                    = "ami-0d690cf6695b0511a"
  instance_type          = "t3.micro"
  key_name               = "linux"
  
 


  tags = {
    Name = "secuirtygroupinstance" 
  }
}
