


resource "aws_eip" "myeip" {
    instance = aws_instance.awsuser.id
    tags = {
    Name = "myeip"
 }

}

resource "aws_instance" "awsuser" {
    ami = "ami-0d690cf6695b0511a"
    instance_type = "t3.micro"
    key_name = "linux"

    tags = {
      Name = "charan"
    }

} 



output "ipaddress" {
value = aws_eip.myeip.public_ip

  
}


