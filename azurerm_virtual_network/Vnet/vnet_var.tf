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