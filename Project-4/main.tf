provider "aws" {
    region = "ap-southeast-1"
}

resource "aws_s3-bucket" "my-bucket" {
    bucket = "dee-tf-s3bucket-2025"
}
