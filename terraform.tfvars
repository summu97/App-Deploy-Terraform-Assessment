project_id 			= "ringed-hallway-417305"
roles = [
    "roles/compute.networkAdmin",
    "roles/compute.securityAdmin",
    "roles/iam.serviceAccountUser",
    "roles/compute.instanceAdmin"

network_name 			= "app-deploy-vpc"
bastion_subnet_name 		= "bastion-subnet"
private_subnet_name 		= "private-subnet"
bastion_region 			= "us-central1"
bastion_cidr 			= "10.0.1.0/24"
private_region 			= "us-central1"
private_cidr 			= "10.0.2.0/24"
bastion_network_tags 		= "bastion-server"
private_network_tags 		= ["app-vm", "sql-vm"]
region 				= "us-central1"
zone 				= "us-central1-a"
vm_machine_type  		= "e2-medium"
app_vm1_name 			= "app-vm1"
app_vm2_name  			= "app-vm2"
db_vm_name  			= "sql-vm"
network 			= "app-deploy-vpc"
subnetwork 			= "private-subnet"
app_name  			= "app"
