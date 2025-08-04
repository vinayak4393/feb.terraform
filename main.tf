


resource "aws_instance" "first_ec2_1" {
    ami = var.my_ami
    instance_type = var.instance_type
    key_name = var.key_pair_name
    tags={
      Name="var_try" 
    }
}


resource "aws_s3_bucket" "backend_s3" {
    bucket = var.bucket-name
}

resource "aws_s3_bucket_versioning" "versioning" {
    bucket = aws_s3_bucket.backend_s3.id
    versioning_configuration {
        status = "Enabled"
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