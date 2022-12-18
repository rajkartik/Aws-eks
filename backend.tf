terraform {
  backend "s3" {
    bucket = "mystateapp"
    key    = "hello-app/state.tfstate"
    region =  "us-east-1"
  }
}