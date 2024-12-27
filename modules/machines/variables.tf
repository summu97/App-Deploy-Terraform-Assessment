variable "project_id" {
  description = "The GCP project ID"
  type        = string
  default    = "ringed-hallway-417305"
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
}

variable "subnetwork" {
  description = "subnetwork."
  type        = string
}
