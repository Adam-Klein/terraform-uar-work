provider "aws" {
  access_key = "AKIAI7VN3OGBZXPNEU2A"
  secret_key = "y3cElKTbznku37RDut2Q17aGfRzDLiSSoDNzd+5c"
  region     = "us-west-2"
}

#resource "aws_instance" "example" {
#  ami           = "ami-a0cfeed8"
#  instance_type = "t2.micro"
#}

resource "aws_instance" "example" {
  ami           = "ami-0bbe6b35405ecebdb"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
    instance = "${aws_instance.example.id}"
}