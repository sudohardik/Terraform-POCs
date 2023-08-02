resource "aws_s3_bucket" "s3_sample_bucket" {
  bucket = var.aws-s3_bucket

  tags = {
    Name        = "s3_bucket"
    Environment = "Dev"
  }
}
