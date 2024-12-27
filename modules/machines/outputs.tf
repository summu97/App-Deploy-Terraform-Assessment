output "app_vm1_private_ip" {
  description = "Private IP address of App VM1"
  value       = google_compute_instance.app_vm1.network_interface[0].network_ip
}

output "app_vm2_private_ip" {
  description = "Private IP address of App VM2"
  value       = google_compute_instance.app_vm2.network_interface[0].network_ip
}

output "db_vm_private_ip" {
  description = "Private IP address of DB VM"
  value       = google_compute_instance.db_vm.network_interface[0].network_ip
}
