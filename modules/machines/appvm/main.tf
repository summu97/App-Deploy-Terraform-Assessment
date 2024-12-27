resource "google_compute_instance" "app_vm" {
  count        = var.vm_count
  name         = "app-vm-${count.index + 1}"
  machine_type = var.machine_type
  zone         = var.zone
  project      = var.project_id

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network
    access_config {
      # Public IP
    }
  }

  tags = var.tags
}

