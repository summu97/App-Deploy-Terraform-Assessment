variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "zone" {
  description = "The zone for resources"
  type        = string
}

variable "app_name" {
  description = "The name of the application"
  type        = string
  default     = "app"
}
