variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "zone" {
  description = "The zone for resources"
  type        = string
}

variable "vm_instance_ips" {
  description = "List of IP addresses for the application VMs"
  type        = list(string)
}

variable "app_name" {
  description = "The name of the application"
  type        = string
  default     = "app"
}
