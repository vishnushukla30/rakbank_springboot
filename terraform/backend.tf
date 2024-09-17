terraform {
  backend "s3" {
    bucket = "awseksbackend"
    key    = "dev.tfstate"
    region = "me-central-1"
  }
}
