# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

// variable "db_remote_state_bucket" {
//   description = "The name of the S3 bucket used for the database's remote state storage"
//   type        = string
// }

// variable "db_remote_state_key" {
//   description = "The name of the key in the S3 bucket used for the database's remote state storage"
//   type        = string
// }

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "instance_type" {
    description = "The type of EC2 instance to run (e.g. t2.micro)"
    type        = string
    default     = "t2.micro"
}

variable "cluster_name" {
  description = "The name to use to namespace all the resources in the cluster"
  type        = string
  default     = "webservers-prod"
}