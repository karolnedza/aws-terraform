# Comment

variable "private_key_path" {}
variable "key_name" {
  default = "KarolFrankfurt"
}
variable "network_address_space" {
  default = "10.99.0.0/16"
}

variable "instance_count" {
  default = 6
}

variable "subnet_count" {
  default = 7
}

variable "region_code" {}
variable "product_code" {}
variable "release_code" {}
