terraform {
  backend "s3" {
    bucket = "awseksbackend"
    key    = "terraform.tfstate"
    region = "me-central-1"
  }
}
