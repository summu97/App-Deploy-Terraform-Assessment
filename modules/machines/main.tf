module "networking" {
  source = "/home/sumo1998sumanth/App-Deploy-Terraform-Asessment/terraform/modules/networking"
}

module "service-account" {
  source = "/home/sumo1998sumanth/App-Deploy-Terraform-Asessment/terraform/modules/service-account"
}

resource "google_compute_instance" "app_vm1" {
  name         = var.app_vm1_name
  machine_type = var.vm_machine_type
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }
  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
    access_config {
    }
  }
  
  provisioner "file" {
    source      = "./app_vm_startup.sh"
    destination = "/tmp/app_vm_startup.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/app_vm_startup.sh",
      "sudo /tmp/app_vm_startup.sh"
    ]
    connection {
      type        = "ssh"
      user        = "your-username"
      private_key = file("~/.ssh/id_rsa")
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
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }
  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
    access_config {
    }
  }

  provisioner "file" {
    source      = "./app_vm_startup.sh"
    destination = "/tmp/app_vm_startup.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/app_vm_startup.sh",
      "sudo /tmp/app_vm_startup.sh"
    ]
    connection {
      type        = "ssh"
      user        = "your-username"
      private_key = file("~/.ssh/id_rsa")
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
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }
  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
    access_config {
    }
  }

  provisioner "file" {
    source      = "./mssql_vm_startup.sh"
    destination = "/tmp/mssql_vm_startup.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/mssql_vm_startup.sh",
      "sudo /tmp/mssql_vm_startup.sh"
    ]
    connection {
      type        = "ssh"
      user        = "your-username"
      private_key = file("~/.ssh/id_rsa")
      host        = self.network_interface[0].access_config[0].nat_ip
    }
  }
}

