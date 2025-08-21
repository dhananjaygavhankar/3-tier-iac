variable "subnet_configs_name_backend" {}
variable "subnet_configs_name_frontend" {}
variable "vnet_name" {}
variable "address_space" {}
variable "location" {}
variable "resource_group_name" {}
variable "nic_ip_frontend" {}
variable "nsg_group" {}
variable "username" {
    description ="Enter Username"
}
variable "password" {
    description ="Enter Password"
}
variable "key_vault" {
    description = "A vault's name must be between 3-24 alphanumeric characters"
}
variable "username_value" {
    description ="Enter Username Value"
}
variable "password_value" {
    description ="Enter Password Value"
}