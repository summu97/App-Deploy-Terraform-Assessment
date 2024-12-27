variable "project_id" {
type = string
default = "ringed-hallway-417305"
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
default = "private-server"
}
