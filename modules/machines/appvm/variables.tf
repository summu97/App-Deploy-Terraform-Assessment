variable "project_id" {
  type        = string
  description = "The project ID to deploy resources in"
}

variable "zone" {
  type        = string
  description = "The GCP zone to deploy the VMs"
}

variable "machine_type" {
  type        = string
  description = "The machine type for the VM"
}

variable "image" {
  type        = string
  description = "The image to use for the VM"
}

variable "network" {
  type        = string
  description = "The network the VM will be connected to"
}

variable "tags" {
  type        = list(string)
  description = "Tags to assign to the VM"
  default     = []
}

variable "vm_count" {
  type        = number
  description = "The number of VMs to create"
  default     = 2
}
