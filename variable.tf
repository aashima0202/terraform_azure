variable "resource_group_location" {
  default = "eastus"
  description   = "Location of the resource group."
}

variable "rg_preprod" {
  default       = "preprod_var"
}
variable "rg_prod" {
  default       = "prod_var"
}
