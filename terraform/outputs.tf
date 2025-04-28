output "aks_cluster_name" {
  description = "The name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.chat_aks.name
}

output "resource_group_name" {
  description = "The name of the Resource Group"
  value       = azurerm_resource_group.chat_rg.name
}

output "kube_admin_config_raw" {
  description = "Admin kubeconfig for AKS"
  value       = azurerm_kubernetes_cluster.chat_aks.kube_admin_config_raw
  sensitive   = true
}

output "kube_config" {
  description = "Raw kubeconfig for your AKS cluster"
  value       = azurerm_kubernetes_cluster.chat_aks.kube_config_raw
  sensitive   = true
}