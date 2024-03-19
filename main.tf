provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "mop" {
  bucket = "khonglomerate-mop"
  tags = {
    Name = "Bucket and a Mop"
    Environment = "Production"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.mop.id
  versioning_configuration {
    status = "Enabled"
  }
}
