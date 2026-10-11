variable "acl_tokens" {
  description = <<EOT
Map of acl_tokens, attributes below
Optional:
    - accessor_id
    - description
    - expiration_time
    - local
    - namespace
    - partition
    - policies
    - roles
    - node_identities (block):
        - datacenter (required)
        - node_name (required)
    - service_identities (block):
        - datacenters (optional)
        - service_name (required)
    - templated_policies (block):
        - datacenters (optional)
        - template_name (required)
        - template_variables (optional, block):
            - name (optional)
EOT

  type = map(object({
    accessor_id     = optional(string)
    description     = optional(string)
    expiration_time = optional(string)
    local           = optional(bool)
    namespace       = optional(string)
    partition       = optional(string)
    policies        = optional(set(string))
    roles           = optional(set(string))
    node_identities = optional(list(object({
      datacenter = string
      node_name  = string
    })))
    service_identities = optional(list(object({
      datacenters  = optional(list(string))
      service_name = string
    })))
    templated_policies = optional(list(object({
      datacenters   = optional(list(string))
      template_name = string
      template_variables = optional(object({
        name = optional(string)
      }))
    })))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

