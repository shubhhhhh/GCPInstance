terraform {
  backend "gcs" {
    bucket  = "shubhms_bucket"
    prefix  = "terraform/Instance"
    credentials = "/root/14Dec24/base/terraform14Dec24_creds.json"
  }
}
