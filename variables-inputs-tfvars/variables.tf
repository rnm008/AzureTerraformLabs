#Project variables

variable "location" {
  type        = string
  default     = "West US"
  description = "The location for the deployment"
}

variable "rsgname" {
  type = string
  description = "Resource Group name"
  default = "TerraformRG"
}

variable "stgactname" {
  type = string
  description = "Storage account name"
}