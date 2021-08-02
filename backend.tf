terraform {
  backend "gcs" {
    bucket      = "new12344"
    prefix      = "dev"
    credentials = "gcp-service.json"
  }
}
