variable "location" {
  description = "The Azure Region where the resource group should exist."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which the network security group should exist."
  type        = string
}
variable "nsg_group" {
  description = "The name of the network security group."
  type        = string
}