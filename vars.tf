variable node_count {
  default = 2
}

variable nginx_operating_system {
  default = "UBUNTU_LATEST"
}

variable port {
  default = "80"
}

variable datacenter {
  default = "dal06"
}

#######################
# Provider variables
#######################
variable "ibmid" {
   type = "string"
   description = "Your IBM-ID."
}

variable "ibmidpw" {
  type = "string"
  description = "The password for your IBM-ID."
}

variable "slaccountnum" {
  type = "string"
  description = "Your Softlayer account number."
}
