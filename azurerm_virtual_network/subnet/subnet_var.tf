variable "vnet_name" {
  description = "Name of the parent Virtual Network where subnets will be created."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name where the parent VNet exists."
  type        = string
}

variable "subnet_configs_name" {
  description = "A map of subnet configurations. Each entry should have 'name' and 'address_prefixes'."
# type =list(string)
type =string 
  }
variable "subnet_address_prefixes" {
  description = "The address prefixes to use for the subnet."
  type        = list(string)
}


