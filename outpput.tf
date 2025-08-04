output "ec2_public_ip" {
    value = aws_instance.first_ec2_1.public_ip
}

output "s3_bucket_name" {
    value = aws_s3_bucket.backend_s3.bucket
}

