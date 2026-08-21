

resource "aws_instance" "awsserver1" {
    
    ami = var.ami
    key_name = var.key_name
    instance_type = var.cpu
    tags = {
      Name = "sandeep"
    }

} 