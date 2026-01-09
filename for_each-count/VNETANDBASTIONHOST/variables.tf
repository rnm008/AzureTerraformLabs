variable "resourcegroup_name" {
  type        = string
  default     = "TFTestTRob01"
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  default     = "CentralUS"
  description = "The region for deployment"
}

variable "tags" {
  type        = map(string)
  description = "The name of the resource group"
  default = {
    "Environment" = "Lab"
    "Owner"       = "Bob"
  }
}

variable "vnet_name" {
  type        = string
  default     = "VNetTFTest"
  description = "The name of the vnet"
}


variable "vnet_address_space" {
  type        = list(any)
  default     = ["10.13.0.0/15"]
  description = "The address space for the vnet"
}

variable "subnets" {
  type = map(any)
  default = {
    subnet_1 = {
      name             = "subnet_1"
      address_prefixes = ["10.13.1.0/24"]
    }
    subnet_2 = {
      name             = "subnet_2"
      address_prefixes = ["10.13.2.0/24"]
    }
    subnet_3 = {
      name             = "subnet_3"
      address_prefixes = ["10.13.3.0/24"]
    }
    #The name must be AzureBastionSubnet
    bastion_subnet = {
      name             = "AzureBastionSubnet"
      address_prefixes = ["10.13.250.0/24"]
    }
  }
}
variable "bastionhost_name" {
  type        = string
  default     = "BastionHost"
  description = "The name of the bastion host"
}