variable "zone" {
  description = "The zone for resources"
  type        = string
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
