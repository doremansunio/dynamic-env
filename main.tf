# Terraform configuration


resource "aws_s3_bucket" "s3_buck_1" {
  region = "ap-south-1"
  bucket = "test-bucket"
}
