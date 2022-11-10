provider "aws" {
  region = "ap-northeast-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "example" {
 for_each = {
    host-1= "ANSIBLE"
    host-2= "Docker"
}
  ami           = "ami-0de5311b2a443fb89"
  instance_type = "t2.medium"
  tags= {
    Name = "${each.value}" 
  }
}
