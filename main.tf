provider aws {
  region  ="us-west-1"
}


module "my_instance1" {
  source = "./first_instance"
  ami_instance = var.ami_instance
  instance_type = var.instance_type
  public_subnet_id = var.public_subnet_id
  security_group_id  = var.security_group_id
  volumesize         = var.volumesize
  instance_name      = var.instance_name1
}

################################ creating a second instance ##############################################

module "my_instance2" {
  source = "./second_instance"
  ami_instance = var.ami_instance2
  instance_type = var.instance_type2
  public_subnet_id = var.public_subnet_id2
  security_group_id  = var.security_group_id2
  instance_name     = var.instance_name2
}
