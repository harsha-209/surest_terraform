variable "ami_instance" { default = "ami-045e6fa7127ab1ac4" }
variable "instance_type" { default = "t2.micro" }
variable "public_subnet_id" { default = "subnet-b76364df" }
variable "security_group_id" { default = "sg-4eb4442b" }
variable "volumesize"  {default = "10" }
variable "instance_name1"     { default  = "instance1"}

################################### second instance variables###############################

variable "ami_instance2" { default = "ami-045e6fa7127ab1ac4" }
variable "instance_type2" { default = "t2.micro" }
variable "public_subnet_id2" { default = "subnet-b76364df" }
variable "security_group_id2" { default = "sg-4eb4442b" }
variable "volumesize2"  {default = "10" }
variable "instance_name2"     { default  = "instance2"}
