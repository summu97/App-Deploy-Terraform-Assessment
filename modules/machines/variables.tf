variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The region where the VMs will be created"
  type        = string
}

variable "zone" {
  description = "The zone where the VMs will be created"
  type        = string
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

variable "app_custom_data" {
  description = "Custom data for application VMs"
  type        = string
}

variable "db_custom_data" {
  description = "Custom data for the database VM"
  type        = string
}
