
provider "aws" {
  region = var.region
}

resource "aws_instance" "campagne" {
  ami           = var.ami_id
  instance_type = "t3.micro"
  key_name      = var.key_name

  user_data = file("cloud-init.sh")

  tags = {
    Name = "CampagneAppInstance"
  }
}
