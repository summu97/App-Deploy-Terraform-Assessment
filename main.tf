terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5"
    }
  }
}


provider "google" {
  project = var.project_id
}

module "loadbalancer" {
  source    = "./modules/loadbalancer"

  zone			= var.zone
  app_name		= var.app_name
  instance_group_name 	= var.instance_group_name

  depends_on = [
    module.networking,
    module.service-account
    module.machines
  ]

}
