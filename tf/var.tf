provider "azurerm" {
  version = "=1.28.0"
  subscription_id = "You Suscription ID"
}
variable "resource_group_name" {
  default = "aks"
}
variable "location" {
  default ="Central US"
}
variable "log_analytics_workspace_name" {
    default = "wistercluster"
}
variable "log_analytics_workspace_location" {
    default = "South Central US"
}
variable "log_analytics_workspace_sku" {
    default = "Free"
}
variable "cluster_name" {
    default = "wister"
}
variable "dns_prefix" {
    default = "wis"
}
variable "ssh_public_key" {
    default = "/DIRECTORY/rsa.pub"
}
variable "agent_count" {
    default = "1"
}
variable "who" {
  default  ="Eddy Wister"
}