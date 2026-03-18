terraform{
    backend "s3"{
        bucket = "terraform-state-bucket"
        region = "ap-south-1"
        key = "phase1/terraform.tfstate"
        dynamodb_table = "terraform-lock"
        }
}