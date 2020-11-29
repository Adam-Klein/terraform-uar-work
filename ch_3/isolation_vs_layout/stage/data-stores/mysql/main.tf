provider "aws" {
    region = "us-west-2"
}

terraform {
    backend "s3" {
        bucket          = "kleinsystems-tuar-state"
        key             = "stage/data-stores/mysql/terraform.tfstate"
        region          = "us-west-2"
        dynamodb_table  = "terraform-up-and-running-locks"
        encrypt         = true
    }
}

resource "aws_db_instance" "example" {
    identifier_prefix   = "terraform-up-and-running"
    engine              = "mysql"
    allocated_storage   = 10
    instance_class      = "db.t2.micro"
    name                = "example_database"
    username            = "admin"
    skip_final_snapshot = true

    password = var.db_password
}
