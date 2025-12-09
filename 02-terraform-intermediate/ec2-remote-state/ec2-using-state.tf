resource "aws_instance" "remote-state" {
  ami           = "ami-077aec33f15de0896"
  instance_type = "t3.micro"
  subnet_id     = "subnet-002a37043f0e7d7f1"

  tags = {
    Name         = "Remote State"
    Owner        = "Victor Vital"
    Env          = "Dev"
    CreatedDat   = "04/12/2025"
    MadeIn       = "Mauá"
    Contribuitor = "John"
  }
}