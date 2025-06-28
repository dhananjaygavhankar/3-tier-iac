resource_group_name          = "todo-rg"
location                     = "centralindia"
vnet_name                    = "todo-vnet"
address_space                = ["10.0.0.0/16"]
nic_ip_frontend              = "frontend-Nic-ip" # explicitely assigned for addressing error 
subnet_configs_name_backend  = "Backend"
subnet_configs_name_frontend = "Frontend"
nsg_group                    = "NSGforSSH"