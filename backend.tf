terraform {
  backend "s3" {
    bucket = "store-for-tfstate"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
