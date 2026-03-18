module "vpc"{
    source = "./modules/vpc"

    vpc_cidr = var.vpc_cidr
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
}

resource "aws_instance" "newinstance"{
    ami = "ami-2415425"
    instance_type = "t3.micro"
    subnet_id = modeules.vpc.public_subnet_id

    associate_public_ip_address = true

    tags = {
        name = "EC2-Instance"
        }

}

resource "aws_s3_bucket" "water-bucket"{
    bucket = "water-bucket-1"
}


