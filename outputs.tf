output "hpc_cache_blob_nfs_targets" {
  description = "All hpc_cache_blob_nfs_target resources"
  value       = azurerm_hpc_cache_blob_nfs_target.hpc_cache_blob_nfs_targets
}
output "hpc_cache_blob_nfs_targets_access_policy_name" {
  description = "List of access_policy_name values across all hpc_cache_blob_nfs_targets"
  value       = [for k, v in azurerm_hpc_cache_blob_nfs_target.hpc_cache_blob_nfs_targets : v.access_policy_name]
}
output "hpc_cache_blob_nfs_targets_cache_name" {
  description = "List of cache_name values across all hpc_cache_blob_nfs_targets"
  value       = [for k, v in azurerm_hpc_cache_blob_nfs_target.hpc_cache_blob_nfs_targets : v.cache_name]
}
output "hpc_cache_blob_nfs_targets_name" {
  description = "List of name values across all hpc_cache_blob_nfs_targets"
  value       = [for k, v in azurerm_hpc_cache_blob_nfs_target.hpc_cache_blob_nfs_targets : v.name]
}
output "hpc_cache_blob_nfs_targets_namespace_path" {
  description = "List of namespace_path values across all hpc_cache_blob_nfs_targets"
  value       = [for k, v in azurerm_hpc_cache_blob_nfs_target.hpc_cache_blob_nfs_targets : v.namespace_path]
}
output "hpc_cache_blob_nfs_targets_resource_group_name" {
  description = "List of resource_group_name values across all hpc_cache_blob_nfs_targets"
  value       = [for k, v in azurerm_hpc_cache_blob_nfs_target.hpc_cache_blob_nfs_targets : v.resource_group_name]
}
output "hpc_cache_blob_nfs_targets_storage_container_id" {
  description = "List of storage_container_id values across all hpc_cache_blob_nfs_targets"
  value       = [for k, v in azurerm_hpc_cache_blob_nfs_target.hpc_cache_blob_nfs_targets : v.storage_container_id]
}
output "hpc_cache_blob_nfs_targets_usage_model" {
  description = "List of usage_model values across all hpc_cache_blob_nfs_targets"
  value       = [for k, v in azurerm_hpc_cache_blob_nfs_target.hpc_cache_blob_nfs_targets : v.usage_model]
}
output "hpc_cache_blob_nfs_targets_verification_timer_in_seconds" {
  description = "List of verification_timer_in_seconds values across all hpc_cache_blob_nfs_targets"
  value       = [for k, v in azurerm_hpc_cache_blob_nfs_target.hpc_cache_blob_nfs_targets : v.verification_timer_in_seconds]
}
output "hpc_cache_blob_nfs_targets_write_back_timer_in_seconds" {
  description = "List of write_back_timer_in_seconds values across all hpc_cache_blob_nfs_targets"
  value       = [for k, v in azurerm_hpc_cache_blob_nfs_target.hpc_cache_blob_nfs_targets : v.write_back_timer_in_seconds]
}

