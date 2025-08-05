variable   "bucket-name" {
    description = "bucket name that is to be used"
    type = string
    default = ""
}

variable "versioning_status" {
    description = "versioning status for the S3 bucket"
    type = string
    default = ""
  
}