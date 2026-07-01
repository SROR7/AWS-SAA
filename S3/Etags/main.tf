terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.52.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_s3_bucket" "etag-bucket-example" {

}

resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.etag-bucket-example.id
  key    = "file.txt"
  source = "./file.txt"

  etag = filemd5("file.txt")
}
