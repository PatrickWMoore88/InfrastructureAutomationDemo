resource "aws_s3_bucket" "demo" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_acl" "demo_acl" {
  bucket = aws_s3_bucket.demo.id
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.demo.bucket
}