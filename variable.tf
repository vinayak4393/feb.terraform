variable "key_pair_name" {
    description = "pem key that is to be used"
    type = string
}

variable "instance_type" {
    description = "type of instance to be used"
    type = string
}

variable "my_ami" {
    description = "ami that is to be used"
    type = string
}

variable "bucket-name" {
    description = "S3 bucket name for backend"
    type = string
}