terraform {
  required_version = "~>1.11"
  
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>6.0"
    }
  }

  backend "s3" {
    bucket         = "tf-backend-bucket-vin04082025"
    key            = "testing/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    use_lockfile   = true
  }
}
