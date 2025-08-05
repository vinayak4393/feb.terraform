resource "aws_s3_bucket" "module_s3" {
    bucket = var.bucket-name
}

resource "aws_s3_bucket_versioning" "versioning" {
    bucket = aws_s3_bucket.backend_s3.id
    versioning_configuration {
        status = var.versioning_status
    }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "sse" {
    bucket = aws_s3_bucket.backend_s3.id
    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm = "AES256"
        }
    }
}