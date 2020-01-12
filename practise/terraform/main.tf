terraform {
  backend "s3" {
    bucket = "***"
    key    = "***"
    region = "us-west-2"
  }
}


provider "aws" {
  region = var.region


}

resource "aws_instance" "web" {
  ami           = data.aws_ami.Amazon_Linux.id
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}





data "aws_ami" "Amazon_Linux" {
  most_recent = true
  name_regex  = "^amzn2-ami-hvm-2.0.20191024.3-x86_64-gp2"

  owners = ["137112412989"]
}


