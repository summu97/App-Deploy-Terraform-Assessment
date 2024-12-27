module "machines" {
source = "/home/sumo1998sumanth/App-Deploy-Terraform-Asessment/terraform/modules/machines"
}

# Health Check for Load Balancer
resource "google_compute_health_check" "http_health_check" {
  name               = "${var.app_name}-http-health-check"
  http_health_check {
    port         = 80
    request_path = "/"
  }
  check_interval_sec  = 5
  timeout_sec         = 5
  unhealthy_threshold = 3
  healthy_threshold   = 2
}

# Backend Service for Load Balancer
resource "google_compute_backend_service" "app_backend_service" {
  name               = "${var.app_name}-backend-service"
  protocol           = "HTTP"
  health_checks      = [google_compute_health_check.http_health_check.id]
  port_name          = "http"

  backends {
    group = google_compute_instance_group.app_instance_group.self_link
  }
}

# URL Map for Routing Traffic
resource "google_compute_url_map" "app_url_map" {
  name            = "${var.app_name}-url-map"
  default_service = google_compute_backend_service.app_backend_service.id
}

# Target HTTP Proxy for Load Balancer
resource "google_compute_target_http_proxy" "app_target_proxy" {
  name    = "${var.app_name}-target-proxy"
  url_map = google_compute_url_map.app_url_map.id
}

# Global IP Address for Load Balancer
resource "google_compute_global_address" "app_ip_address" {
  name = "${var.app_name}-ip-address"
}

# Forwarding Rule for Load Balancer
resource "google_compute_global_forwarding_rule" "app_forwarding_rule" {
  name                  = "${var.app_name}-forwarding-rule"
  target                = google_compute_target_http_proxy.app_target_proxy.id
  port_range            = "80"
  ip_address            = google_compute_global_address.app_ip_address.address
}

# Instance Group for VMs
resource "google_compute_instance_group" "app_instance_group" {
  name = "${var.app_name}-instance-group"
  zone = var.zone

  instances = [
    module.machines.app_vm1_self_link,
    module.machines.app_vm2_self_link
  ]
}



