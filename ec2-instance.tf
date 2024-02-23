resource "aws_instance" "instance" {
  ami = "ami-0d442a425e2e0a743"
  instance_type               = "t3.micro"
  availability_zone           = "us-west-2a"
  associate_public_ip_address = true
  key_name                    = "vockey"
  vpc_security_group_ids      = ["sg-0c63e7d2130251897"]
  subnet_id                   = "subnet-08ad54bd2568f99a1"
  # iam_instance_profile        = "LabRole"
  count = 2
  tags = {
    Name = "Sandbox1"
  }
}
