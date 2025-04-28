variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "rg-rocketchat"
}

variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "Norway East"
}

variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "aks-rocketchat"
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default     = 2
}

variable "node_vm_size" {
  description = "VM size for each AKS node"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "availability_zones" {
  description = "Zones to spread your nodes across"
  type        = list(string)
  default     = ["1","2","3"]
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster (used to form the managed cluster FQDN)"
  type        = string
  default     = "aks-rocketchat"    # pick whatever you like
}

variable "subscription_id" {
  description = "Azure Subscription ID to deploy into"
  type        = string
}
