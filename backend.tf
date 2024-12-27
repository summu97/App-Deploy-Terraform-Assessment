terraform {
  backend "gcs" {
    bucket = "appdeploy-backend-bucket"
    prefix = "terraform/state/appdeploy"
  }
}
