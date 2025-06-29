data "terraform_remote_state" "networking" {
  backend = "gcs"

  config = {
	bucket = "shubhms_bucket"
	prefix = "terraform/network"
	credentials = "/root/14Dec24/base/terraform14Dec24_creds.json"
    }
  }
