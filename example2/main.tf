# HCL (HashiCorp Configuration Language) 
provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "us-east-1-bastion-key" {
  key_name   = "bastion-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDZ+YtbdbiZGT6bjaU/4Fthgc+NmAeyruoQn2oEnyv9qywHvgU/MWDzqGKpAuwk5xhwHmyS2nBMyDmajz77GYKIKqtK4iwxeHiPtZdSXHr8Gq06Pe4///Sf8f/lev8yJ6B8xw8nHN5Be5TGsXMqQUO0lYor7o9bJtGYGZwt/C5W/9gwCEYK8yY1Q2JmBgvHzL5LGKydlO+gD8H3O0t1gL2rhBZkX2DR0n2D9woQnDAR2zbg9Jyklogl5dBzrse7et1RQI7tHeBK3V5fSEz54ZteWNkmjSd0GSr2Gu7KrxsstHyHWkQaBY0MbD07ElM4rtW4T3N7gt0X4piwe+kZ8E+3 ec2-user@Bastion"
}

resource "aws_instance" "exmaple" {
  key_name      = "bastion-key"
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
}
