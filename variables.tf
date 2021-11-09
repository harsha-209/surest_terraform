variable "ami_instance" { default = "ami-0e0bf4b3a0c0e0adc" }
variable "instance_type" { default = "t2.micro" }
variable "public_subnet_id" { default = "subnet-2a53f84c" }
variable "security_group_id" { default = "sg-4b87a23e" }
variable "volumesize"  {default = "10" }
variable "instance_name1"     { default  = "instance1"}

################################### second instance variables###############################

variable "ami_instance2" { default = "ami-0e0bf4b3a0c0e0adc" }
variable "instance_type2" { default = "t2.micro" }
variable "public_subnet_id2" { default = "subnet-7705c22d" }
variable "security_group_id2" { default = "sg-4b87a23e" }
variable "volumesize2"  {default = "10" }
variable "instance_name2"     { default  = "instance2"}
