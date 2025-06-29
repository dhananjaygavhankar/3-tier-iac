module "rg" {
  source              = "../module/Resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}


module "vnet" {
  depends_on          = [module.rg]
  source              = "../Module/azurerm_Virtual_Network/Vnet"
  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
}


module "subnet_frontend" {
  depends_on              = [module.vnet, module.rg]
  source                  = "../Module/azurerm_Virtual_Network/subnet"
  resource_group_name     = var.resource_group_name
  vnet_name               = var.vnet_name
  subnet_configs_name     = var.subnet_configs_name_frontend
  subnet_address_prefixes = ["10.0.1.0/24"]
}

module "subnet_backend" {
  depends_on              = [module.vnet, module.vnet, module.rg]
  source                  = "../Module/azurerm_Virtual_Network/subnet"
  resource_group_name     = var.resource_group_name
  vnet_name               = var.vnet_name
  subnet_configs_name     = var.subnet_configs_name_backend
  subnet_address_prefixes = ["10.0.2.0/24"]
}

module "Virtual_machine_Frontend-Nic" {
  depends_on          = [module.vnet, module.subnet_frontend, module.public_ip_frontend, module.vnet, module.nsg]
  source              = "../Module/azurerm_virtual_machin/Nic"
  nic_name            = "Frontend-Nic"
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_configs_name = var.subnet_configs_name_frontend
  vnet_name           = var.vnet_name
  nic_ip              = var.nic_ip_frontend
  vm_ip               = "Front-PIP"
  nsg_group           = var.nsg_group
}


module "Virtual_machine_Backend-Nic" {
  depends_on          = [module.vnet, module.subnet_backend, module.public_ip_backend, module.nsg]
  source              = "../Module/azurerm_virtual_machin/Nic"
  nic_name            = "Backend-Nic"
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_configs_name = var.subnet_configs_name_backend
  vnet_name           = var.vnet_name
  nic_ip              = "backend-Nic-ip"
  vm_ip               = "Back-PIP"
  nsg_group           = var.nsg_group
}

module "public_ip_frontend" {
  depends_on          = [module.vnet]
  source              = "../Module/azurerm_virtual_network/Public_ip"
  vm_ip               = "Front-PIP"
  resource_group_name = var.resource_group_name
  location            = var.location
}
module "public_ip_backend" {
  depends_on          = [module.vnet]
  source              = "../Module/azurerm_virtual_network/Public_ip"
  vm_ip               = "Back-PIP"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "virtual_machine_frontend" {
  depends_on          = [module.Virtual_machine_Frontend-Nic, module.public_ip_frontend, module.subnet_frontend, module.vnet]
  source              = "../Module/azurerm_virtual_machin/VM"
  vm                  = "Frontend-VM"
  resource_group_name = var.resource_group_name
  location            = var.location
  nic_name            = "Frontend-Nic"
  disks               = "frontend-disk"
}

module "virtual_machine_backend" {
  depends_on          = [module.vnet, module.Virtual_machine_Backend-Nic, module.public_ip_backend, module.subnet_backend]
  source              = "../Module/azurerm_virtual_machin/VM"
  vm                  = "Backend-VM"
  resource_group_name = var.resource_group_name
  location            = var.location
  nic_name            = "Backend-Nic"
  disks               = "backend-disk"
}

module "sql_server" {
  depends_on          = [module.virtual_machine_backend]
  source              = "../Module/azurerm_sql_server"
  server_name         = "sqlserverbackend7796229222"
  resource_group_name = var.resource_group_name
  location            = var.location
  sql_admin_username  = "dhananjaytodo"
  sql_admin_password  = "dhananjay-7796229222"
  todo_db             = "todoappdb"
}

module "nsg" {
  depends_on          = [module.rg]
  source              = "../Module/azurerm_virtual_machin/nsg"
  resource_group_name = var.resource_group_name
  location            = var.location
  nsg_group           = var.nsg_group
}

module "key_vault" {
  depends_on          = [module.rg]
  source              = "../Module/Key_vault"
  resource_group_name = var.resource_group_name
  location            = var.location
}