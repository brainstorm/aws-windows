variable "region" {
  description = "The aws region. Choose the one closest to you: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions"
  type = string
}

variable "allowed_availability_zone_identifier" {
  description = "The allowed availability zone identify (the letter suffixing the region). Choose ones that allows you to request the desired instance as spot instance in your region. An availability zone will be selected at random and the instance will be booted in it."
  type = list(string)
  default = ["a", "b"]
}

# locals {
#   my_public_ip = "data.external.myipaddr.body"
# }

# data "http" "myipaddr" {
#   url = "http://icanhazip.com"
# }
# variable "my_public_ip" {
#   description = "Please replace this with your public IP address."
#   type = string
#   default = "data.myipaddr"
# }
# output "public_ip" {
#   value = chomp("data.http.myipaddr.body")
# }

variable "instance_type" {
  description = "The aws instance type, Choose one with a CPU/GPU that fits your need: https://aws.amazon.com/ec2/instance-types/#Accelerated_Computing"
  type = string
  default = "g4dn.xlarge"
}

variable "root_block_device_size_gb" {
  description = "The size of the root block device (C:\\ drive) attached to the instance"
  type = number
  default = 120
}

variable "custom_ami" {
  description = "Use the specified AMI instead of the most recent windows AMI in available in the region"
  type = string
  default = ""
}

variable "install_parsec" {
  description = "Download and run Parsec-Cloud-Preparation-Tool on first login"
  type = bool
  default = true
}

variable "install_auto_login" {
  description = "Configure auto-login on first boot"
  type = bool
  default = true
}

variable "install_graphic_card_driver" {
  description = "Download and install the Nvidia driver on first boot"
  type = bool
  default = true
}

variable "install_steam" {
  description = "Download and install Valve Steam on first boot"
  type = bool
  default = true
}

variable "install_gog_galaxy" {
  description = "Download and install GOG Galaxy on first boot"
  type = bool
  default = false
}

variable "install_uplay" {
  description = "Download and install Ubisoft Uplay on first boot"
  type = bool
  default = false
}

variable "install_origin" {
  description = "Download and install EA Origin on first boot"
  type = bool
  default = false
}

variable "install_epic_games_launcher" {
  description = "Download and install EPIC Games Launcher on first boot"
  type = bool
  default = false
}