variable "hpc_cache_blob_nfs_targets" {
  description = <<EOT
Map of hpc_cache_blob_nfs_targets, attributes below
Required:
    - cache_name
    - name
    - namespace_path
    - resource_group_name
    - storage_container_id
    - usage_model
Optional:
    - access_policy_name
    - verification_timer_in_seconds
    - write_back_timer_in_seconds
EOT

  type = map(object({
    cache_name                    = string
    name                          = string
    namespace_path                = string
    resource_group_name           = string
    storage_container_id          = string
    usage_model                   = string
    access_policy_name            = optional(string)
    verification_timer_in_seconds = optional(number)
    write_back_timer_in_seconds   = optional(number)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_hpc_cache_blob_nfs_target's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.StorageTargetName] !ok
  # path: name
  #   source:    [from validate.StorageTargetName] !p.MatchString(v)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: cache_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: namespace_path
  #   source:    validate.CacheNamespacePath: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: storage_container_id
  #   source:    [from commonids.ValidateStorageContainerID] !ok
  # path: storage_container_id
  #   source:    [from commonids.ValidateStorageContainerID] err != nil
  # path: usage_model
  #   condition: contains(["READ_HEAVY_INFREQ", "READ_HEAVY_CHECK_180", "READ_ONLY", "READ_WRITE", "WRITE_WORKLOAD_15", "WRITE_AROUND", "WRITE_WORKLOAD_CHECK_30", "WRITE_WORKLOAD_CHECK_60", "WRITE_WORKLOAD_CLOUDWS"], value)
  #   message:   must be one of: READ_HEAVY_INFREQ, READ_HEAVY_CHECK_180, READ_ONLY, READ_WRITE, WRITE_WORKLOAD_15, WRITE_AROUND, WRITE_WORKLOAD_CHECK_30, WRITE_WORKLOAD_CHECK_60, WRITE_WORKLOAD_CLOUDWS
  # path: access_policy_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: verification_timer_in_seconds
  #   condition: value >= 1 && value <= 31536000
  #   message:   must be between 1 and 31536000
  # path: write_back_timer_in_seconds
  #   condition: value >= 1 && value <= 31536000
  #   message:   must be between 1 and 31536000
}

