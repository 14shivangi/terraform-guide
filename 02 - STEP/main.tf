provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-0202920020902090828090" # replace this
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-072827389992029252e7". # replace this
}
