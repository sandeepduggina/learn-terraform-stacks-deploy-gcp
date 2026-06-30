variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "Region (e.g. us-west1)"
  type        = string
}

variable "network_name" {
  description = "VPC name (custom mode, no subnets created here)"
  type        = string
}