terraform {
  backend "gcs" {
    bucket  = "my-terraform-state-bucket-16022677"
    prefix  = "devops-vm-state"
  }
}
