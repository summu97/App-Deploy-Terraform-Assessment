variable "project_id" {
type = string
default = "ringed-hallway-417305"
}

variable "roles" {
  default = [
    "roles/compute.networkAdmin",
    "roles/compute.securityAdmin",
    "roles/iam.serviceAccountUser",
    "roles/compute.instanceAdmin"
  ]
}

variable "network_name" {
type = string
default = "app-deploy-vpc"
}

variable "bastion_region" {
type = string
default = "us-central1"
}

variable "bastion_subnet_name" {
type = string
default = "bastion-subnet"
}

variable "bastion_cidr" {
type = string
default = "10.0.1.0/24"
}

variable "private_region" {
type = string
default = "us-central1"
}

variable "private_subnet_name" {
type = string
default = "private-subnet"
}

variable "private_cidr" {
type = string
default = "10.0.2.0/24"
}

variable "bastion_network_tags" {
type = string
default = "bastion-server"
}

variable "private_network_tags" {
type = string
default = ["app-vm", "sql-vm"]
}

variable "region" {
  description = "The region where the VMs will be created"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The zone where the VMs will be created"
  type        = string
  default     = "us-central1-a"
}

variable "vm_machine_type" {
  description = "Machine type for the VMs"
  type        = string
  default     = "e2-medium"
}

variable "app_vm1_name" {
  description = "Name of the first application VM"
  type        = string
  default     = "app-vm1"
}

variable "app_vm2_name" {
  description = "Name of the second application VM"
  type        = string
  default     = "app-vm2"
}

variable "db_vm_name" {
  description = "Name of the database VM"
  type        = string
  default     = "sql-vm"
}

variable "network" {
  description = "network."
  type        = string
  default     = "app-deploy-vpc"

}

variable "subnetwork" {
  description = "subnetwork."
  type        = string
  default     = "private-subnet"

}

variable "app_name" {
  description = "The name of the application"
  type        = string
  default     = "app"
}

variable "instance_group_name" {
  description = "The name of the group name"
  type        = string
  default     = "appdeploy-instance-group"
}
