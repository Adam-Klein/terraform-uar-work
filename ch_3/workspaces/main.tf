terraform {
    backend "s3" {
        bucket          = "kleinsystems-tuar-state"
        key             = "workspaces-example/terraform.tfstate"
        region          = "us-west-2"

        dynamodb_table  = "terraform-up-and-running-locks"
        encrypt         = true
    }
}

provider "aws" {
    region = "us-west-2"
}

resource "aws_instance" "example" {
    ami             = "ami-0ac73f33a1888c64a"
    instance_type   = "t2.micro"

    tags = {
        Name        =   "Ch_3_workspaces_example"
        Group       =   "TUAR"
    }
}
