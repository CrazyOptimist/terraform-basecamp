variable vpc_cidr_block {
  default = "10.0.0.0/16"
}
variable subnet_cidr_block {
  default = "10.0.10.0/24"
}
variable avail_zone {
  default = "us-west-2b"
}
variable env_prefix {
  default = "dev"
}
variable my_ip {}
variable instance_type {
  default = "t2.micro"
}
variable public_key_location {
  default = "~/.ssh/id_rsa.pub"
}
variable image_name {
  default = "amzn2-ami-*-x86_64-gp2"
}
