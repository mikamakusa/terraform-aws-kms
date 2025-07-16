output "alias" {
  value = {
    for a, b in aws_kms_alias.this : a => {
      arn            = a.arn
      id             = a.id
      name           = a.name
      name_prefix    = a.name_prefix
      target_key_id  = a.target_key_id
      target_key_arn = a.target_key_arn
    }
  }
}

output "ciphertext" {
  value = {
    for a, b in aws_kms_ciphertext.this : a => {
      a       = a.id
      blob    = a.ciphertext_blob
      context = a.context
      key_id  = a.key_id
    }
  }
}

output "custom_key_store" {
  value = {
    for a, b in aws_kms_custom_key_store.this : a => {
      id                       = a.id
      cloud_hsm_cluster_id     = a.cloud_hsm_cluster_id
      custom_key_store_name    = a.custom_key_store_name
      key_store_password       = a.key_store_password
      trust_anchor_certificate = a.trust_anchor_certificate
    }
  }
}

output "external_key" {
  value = {
    for a, b in aws_kms_external_key.this : a => {
      id                                 = a.id
      arn                                = a.arn
      tags                               = a.tags
      tags_all                           = a.tags_all
      policy                             = a.policy
      bypass_policy_lockout_safety_check = a.bypass_policy_lockout_safety_check
      deletion_window_in_days            = a.deletion_window_in_days
      enabled                            = a.enabled
      expiration_model                   = a.expiration_model
      key_material_base64                = a.key_material_base64
      key_state                          = a.key_state
      key_usage                          = a.key_usage
      multi_region                       = a.multi_region
      valid_to                           = a.valid_to
    }
  }
}

output "grant" {
  value = {
    for a, b in aws_kms_grant.grant : a => {
      id                    = a.id
      key_id                = a.key_id
      name                  = a.name
      constraints           = a.constraints
      grant_creation_tokens = a.grant_creation_tokens
      grant_id              = a.grant_id
      grant_token           = a.grant_token
      grantee_principal     = a.grantee_principal
      operations            = a.operations
      retire_on_delete      = a.retire_on_delete
      retiring_principal    = a.retiring_principal
    }
  }
}

output "key" {
  value = {
    for a, b in aws_kms_key.this : a => {
      id                                 = a.id
      key_id                             = a.key_id
      multi_region                       = a.multi_region
      key_usage                          = a.key_usage
      deletion_window_in_days            = a.deletion_window_in_days
      bypass_policy_lockout_safety_check = a.bypass_policy_lockout_safety_check
      policy                             = a.policy
      tags_all                           = a.tags_all
      tags                               = a.tags
      arn                                = a.arn
      custom_key_store_id                = a.custom_key_store_id
      customer_master_key_spec           = a.customer_master_key_spec
      enable_key_rotation                = a.enable_key_rotation
      is_enabled                         = a.is_enabled
      rotation_period_in_days            = a.rotation_period_in_days
      xks_key_id                         = a.xks_key_id
    }
  }
}

output "key_policy" {
  value = {
    for a, b in aws_kms_key_policy.this : a => {
      id                                 = a.id
      policy                             = a.policy
      bypass_policy_lockout_safety_check = a.bypass_policy_lockout_safety_check
      key_id                             = a.key_id
    }
  }
}

output "replica" {
  value = {
    for a, b in aws_kms_replica_external_key.this : a => {
      id                                 = a.id
      key_id                             = a.key_id
      bypass_policy_lockout_safety_check = a.bypass_policy_lockout_safety_check
      policy                             = a.policy
      arn                                = a.arn
      tags                               = a.tags
      tags_all                           = a.tags_all
      deletion_window_in_days            = a.deletion_window_in_days
      key_usage                          = a.key_usage
      valid_to                           = a.valid_to
      key_state                          = a.key_state
      key_material_base64                = a.key_material_base64
      expiration_model                   = a.expiration_model
      enabled                            = a.enabled
      primary_key_arn                    = a.primary_key_arn
    }
  }
}