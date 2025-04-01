resource "aws_instance" "web" {
  ami           = "ami-08b5b3a93ed654d19"  
  instance_type = "t2.micro"
  key_name      = "north"

  tags = {
    Name = "Jenkins-Server"
  }
}