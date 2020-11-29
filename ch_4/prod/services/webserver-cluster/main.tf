provider "aws" {
    region = "us-west-2"
}

module "webserver_cluster" {
    source = "../../../modules/services/webserver-cluster"
    cluster_name            = var.cluster_name
    db_remote_state_bucket  = "kleinsystems-tuar-state"
    db_remote_state_key     = "prod/data-stores/mysql/terraform.tfstate"

    instance_type   = var.instance_type
    min_size        = 2
    max_size        = 10
}