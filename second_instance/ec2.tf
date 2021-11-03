provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = var.ami_instance
  instance_type = var.instance_type
  subnet_id  = var.public_subnet_id
  vpc_security_group_ids = [var.security_group_id]
  tags = {
    Name = var.instance_name
  }
 # vpc_security_group_ids  = { "var.securit_ygroup.id" } 


root_block_device {
           delete_on_termination = true
           encrypted             =  false
          # iops                  = (known after apply)
          # tags                  = (known after apply)
           volume_size           =  "8"
           volume_type           = "gp2"
 }

}


/*
################################ creating a ebs volume with size 10GB#####################
resource "aws_ebs_volume" "example" {
  availability_zone = "ap-south-1a"
  size              = var.volumesize

  tags = {
    Name = "volume1"
  }
}


#################### attaching volume to first instance ################
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.web.id
}

*/

output instance1_id {
   value = "${aws_instance.web.id}"
}

