# VNet with Azure Basion
This module creates a new VNet with a variable amount of subnets.  Next, it creates a new Azure Basion host and attaches it to the VNet at the AzureBastionSubnet.

The latest AzureRM provider at the time this module was created only supports a basic Basion host

## Inputs
Location
Tags
Resource Group Name
VNet name
Basion Host Name
VNet Address space - This can be a list if using more than one address space
Subnets - Enter as may subnets and subnet prefixes as needed
Bastion Subnet - The Bastion Subnet must have the name "AzureBastionSubnet" and a minimum of a /26 subnet

## Outputs
List of Subnet IDs
Public IP of Bastion Host

