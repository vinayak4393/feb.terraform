variable "instance_type" {
    description = "type of instance to be used"
    type = string
    default = ""
}

variable "key_pair_name" {
    description = "pem key that is to be used"
    type = string
    default = ""
}

variable "instance_name" {
    description = "name of the instance"
    type = string
    default = ""
}