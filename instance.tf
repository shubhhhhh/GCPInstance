resource "google_compute_instance" "my_vm" {
  name         = "shubham-instance"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/4751156868206452390"
    }
  }

  network_interface {
    network    = data.terraform_remote_state.networking.outputs.vnetname
    subnetwork = data.terraform_remote_state.networking.outputs.subnetname
    access_config {}
  }
}
