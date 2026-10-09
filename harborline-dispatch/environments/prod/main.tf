terraform {
  required_version = ">= 1.6.0"
}

provider "aws" {
  region = var.region
}

module "network" {
  source = "../../modules/network"
}

module "data" {
  source = "../../modules/data"
}

module "compute" {
  source = "../../modules/compute"
}

module "observability" {
  source = "../../modules/observability"
}
