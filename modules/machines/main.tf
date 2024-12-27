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
  
  # Provisioner to copy and execute the startup script
  provisioner "file" {
    source      = "./app_vm1_startup.sh"
    destination = "/tmp/app_vm1_startup.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/app_vm1_startup.sh",
      "sudo /tmp/app_vm1_startup.sh"
    ]
    connection {
      type        = "ssh"
      user        = "your-username"  # Replace with appropriate username
      private_key = file("~/.ssh/id_rsa")  # Replace with your private key
      host        = self.network_interface[0].access_config[0].nat_ip
    }
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

  # Provisioner to copy and execute the startup script
  provisioner "file" {
    source      = "./app_vm2_startup.sh"
    destination = "/tmp/app_vm2_startup.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/app_vm2_startup.sh",
      "sudo /tmp/app_vm2_startup.sh"
    ]
    connection {
      type        = "ssh"
      user        = "your-username"  # Replace with appropriate username
      private_key = file("~/.ssh/id_rsa")  # Replace with your private key
      host        = self.network_interface[0].access_config[0].nat_ip
    }
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

  # Provisioner to copy and execute database setup script (if needed)
  provisioner "file" {
    source      = "./db_vm_startup.sh"
    destination = "/tmp/db_vm_startup.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/db_vm_startup.sh",
      "sudo /tmp/db_vm_startup.sh"
    ]
    connection {
      type        = "ssh"
      user        = "your-username"  # Replace with appropriate username
      private_key = file("~/.ssh/id_rsa")  # Replace with your private key
      host        = self.network_interface[0].access_config[0].nat_ip
    }
  }
}
