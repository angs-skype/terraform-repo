resource "google_compute_instance" "vm_instance" {
  count        = 2
  name         = "devops-vm-${count.index}"
  machine_type = "e2-micro"
  zone         = "us-central1-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"

    access_config {}
  }

  metadata_startup_script = <<-EOF
              #!/bin/bash
              apt update -y
              apt install nginx -y
              systemctl start nginx
              EOF
}
