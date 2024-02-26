terraform {
  backend "s3" {
    bucket = "awseksbackend"
    key    = "awseksbackend/backendfile"
    region = "me-central-1"
  }
}
