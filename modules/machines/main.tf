provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_instance" "app_vm1" {
  name         = var.app_vm1_name
  machine_type = var.vm_machine_type
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20230816"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
  metadata = {
    custom_data = var.app_custom_data
  }
}

resource "google_compute_instance" "app_vm2" {
  name         = var.app_vm2_name
  machine_type = var.vm_machine_type
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20230816"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
  metadata = {
    custom_data = var.app_custom_data
  }
}

resource "google_compute_instance" "db_vm" {
  name         = var.db_vm_name
  machine_type = var.vm_machine_type
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20230816"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
  metadata = {
    custom_data = var.db_custom_data
  }
}
