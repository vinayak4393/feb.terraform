output "name" {
    description = "The name of the S3 bucket created"
    value       = aws_s3_bucket.module_s3.bucket
  
}