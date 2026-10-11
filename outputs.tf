output "acl_tokens_id" {
  description = "Map of id values across all acl_tokens, keyed the same as var.acl_tokens except keys with no id are omitted"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.id if v.id != null && length(v.id) > 0 }
}
output "acl_tokens_accessor_id" {
  description = "Map of accessor_id values across all acl_tokens, keyed the same as var.acl_tokens except keys with no accessor_id are omitted"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.accessor_id if v.accessor_id != null && length(v.accessor_id) > 0 }
}
output "acl_tokens_description" {
  description = "Map of description values across all acl_tokens, keyed the same as var.acl_tokens except keys with no description are omitted"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.description if v.description != null && length(v.description) > 0 }
}
output "acl_tokens_expiration_time" {
  description = "Map of expiration_time values across all acl_tokens, keyed the same as var.acl_tokens except keys with no expiration_time are omitted"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.expiration_time if v.expiration_time != null && length(v.expiration_time) > 0 }
}
output "acl_tokens_local" {
  description = "Map of local values across all acl_tokens, keyed the same as var.acl_tokens except keys with no local are omitted"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.local if v.local != null }
}
output "acl_tokens_namespace" {
  description = "Map of namespace values across all acl_tokens, keyed the same as var.acl_tokens except keys with no namespace are omitted"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "acl_tokens_node_identities" {
  description = "Map of node_identities values across all acl_tokens, keyed the same as var.acl_tokens except keys with no node_identities are omitted"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.node_identities if v.node_identities != null && length(v.node_identities) > 0 }
}
output "acl_tokens_partition" {
  description = "Map of partition values across all acl_tokens, keyed the same as var.acl_tokens except keys with no partition are omitted"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "acl_tokens_policies" {
  description = "Map of policies values across all acl_tokens, keyed the same as var.acl_tokens except keys with no policies are omitted"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.policies if v.policies != null && length(v.policies) > 0 }
}
output "acl_tokens_roles" {
  description = "Map of roles values across all acl_tokens, keyed the same as var.acl_tokens except keys with no roles are omitted"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.roles if v.roles != null && length(v.roles) > 0 }
}
output "acl_tokens_service_identities" {
  description = "Map of service_identities values across all acl_tokens, keyed the same as var.acl_tokens except keys with no service_identities are omitted"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.service_identities if v.service_identities != null && length(v.service_identities) > 0 }
}
output "acl_tokens_templated_policies" {
  description = "Map of templated_policies values across all acl_tokens, keyed the same as var.acl_tokens except keys with no templated_policies are omitted"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.templated_policies if v.templated_policies != null && length(v.templated_policies) > 0 }
}

