terraform {
  backend "gcs" {
    bucket  = "my-terraform-state-bucket-1602261930"
    prefix  = "devops-vm-state"
  }
}