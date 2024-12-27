output "network_self_link" {
  description = "The self-link of the custom network"
  value       = google_compute_network.custom_network.self_link
}

output "bastion_subnetwork_self_link" {
  description = "The self-link of the bastion subnetwork"
  value       = google_compute_subnetwork.bastion.self_link
}

output "private_subnetwork_self_link" {
  description = "The self-link of the private subnetwork"
  value       = google_compute_subnetwork.private.self_link
}

output "bastion_firewall_self_link" {
  description = "The self-link of the bastion firewall rule"
  value       = google_compute_firewall.bastion-Http-ssh.self_link
}

output "private_firewall_self_link" {
  description = "The self-link of the private firewall rule"
  value       = google_compute_firewall.private-ssh.self_link
}


