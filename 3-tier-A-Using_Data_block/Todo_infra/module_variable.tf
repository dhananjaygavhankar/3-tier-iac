variable "subnet_configs_name_backend" {}
variable "subnet_configs_name_frontend" {}
variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}
variable "address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)
}
variable "location" {
  description = "Location for the Virtual Network"
  type        = string
}
variable "resource_group_name" {
  description = "Name of the Resource Group where the Virtual Network will be created"
  type        = string
}

variable "nic_ip_frontend" {
  description = "The IP name to assign to the nic."
  type        = string
}
variable "nsg_group" {
  description = "The name of the network security group."
  type        = string
}