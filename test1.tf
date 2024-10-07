provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "terra1" {
  ami                    = "ami-0cf70e1d861e1dfb8"
  instance_type          = "t2.micro"
  availability_zone      = "ap-southeast-2a"
  key_name               = "terra-test1"
  vpc_security_group_ids = ["sg-0b7c99ffa0c2fd17f"]
  tags = {
    Name    = "Terra-test1"
    Project = "Terra"
  }

}