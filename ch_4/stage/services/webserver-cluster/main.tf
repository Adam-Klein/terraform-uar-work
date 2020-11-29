provider "aws" {
    region = "us-west-2"
}

module "webserver_cluster" {
    source = "../../../modules/services/webserver-cluster"
    cluster_name            = var.cluster_name
    db_remote_state_bucket  = "kleinsystems-tuar-state"
    db_remote_state_key     = "stage/data-stores/mysql/terraform.tfstate"

    instance_type   = "t2.micro"
    min_size        = 2
    max_size        = 4
}