resource "aws_instance" "instance" {
  ami = "ami-0895022f3dac85884"
  instance_type               = "t3.micro"
  availability_zone           = "us-west-2a"
  associate_public_ip_address = true
  key_name                    = "vockey"
  vpc_security_group_ids      = ["sg-0e40ede16b3a737d0"]
  subnet_id                   = "subnet-04d204c4fe2d0a156"
  # iam_instance_profile        = "LabRole"
  count = 2
  tags = {
    Name = "Sandbox1"
  }
}
