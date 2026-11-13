output "acl_tokens_id" {
  description = "Map of id values across all acl_tokens, keyed the same as var.acl_tokens"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.id }
}
output "acl_tokens_accessor_id" {
  description = "Map of accessor_id values across all acl_tokens, keyed the same as var.acl_tokens"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.accessor_id }
}
output "acl_tokens_description" {
  description = "Map of description values across all acl_tokens, keyed the same as var.acl_tokens"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.description }
}
output "acl_tokens_expiration_time" {
  description = "Map of expiration_time values across all acl_tokens, keyed the same as var.acl_tokens"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.expiration_time }
}
output "acl_tokens_local" {
  description = "Map of local values across all acl_tokens, keyed the same as var.acl_tokens"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.local }
}
output "acl_tokens_namespace" {
  description = "Map of namespace values across all acl_tokens, keyed the same as var.acl_tokens"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.namespace }
}
output "acl_tokens_node_identities" {
  description = "Map of node_identities values across all acl_tokens, keyed the same as var.acl_tokens"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.node_identities }
}
output "acl_tokens_partition" {
  description = "Map of partition values across all acl_tokens, keyed the same as var.acl_tokens"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.partition }
}
output "acl_tokens_policies" {
  description = "Map of policies values across all acl_tokens, keyed the same as var.acl_tokens"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.policies }
}
output "acl_tokens_roles" {
  description = "Map of roles values across all acl_tokens, keyed the same as var.acl_tokens"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.roles }
}
output "acl_tokens_service_identities" {
  description = "Map of service_identities values across all acl_tokens, keyed the same as var.acl_tokens"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.service_identities }
}
output "acl_tokens_templated_policies" {
  description = "Map of templated_policies values across all acl_tokens, keyed the same as var.acl_tokens"
  value       = { for k, v in consul_acl_token.acl_tokens : k => v.templated_policies }
}

