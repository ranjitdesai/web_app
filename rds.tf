resource "aws_db_instance" "mydb" {
  identifier             = "mydatabase"
  engine                 = "mysql"
  engine_version         = "8.0.33"  # Change to a supported version
  instance_class         = "db.t3.micro"  # Use db.t3.micro instead of db.t2.micro
  allocated_storage      = 20
  username              = "admin"
  password              = "password123"
  publicly_accessible    = false
  skip_final_snapshot    = true
}



output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}