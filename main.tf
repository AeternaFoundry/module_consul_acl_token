resource "consul_acl_token" "acl_tokens" {
  for_each = var.acl_tokens

  accessor_id     = each.value.accessor_id
  description     = each.value.description
  expiration_time = each.value.expiration_time
  local           = each.value.local
  namespace       = each.value.namespace
  partition       = each.value.partition
  policies        = each.value.policies
  roles           = each.value.roles

  dynamic "node_identities" {
    for_each = each.value.node_identities != null ? each.value.node_identities : []
    content {
      datacenter = node_identities.value.datacenter
      node_name  = node_identities.value.node_name
    }
  }

  dynamic "service_identities" {
    for_each = each.value.service_identities != null ? each.value.service_identities : []
    content {
      datacenters  = service_identities.value.datacenters
      service_name = service_identities.value.service_name
    }
  }

  dynamic "templated_policies" {
    for_each = each.value.templated_policies != null ? each.value.templated_policies : []
    content {
      datacenters   = templated_policies.value.datacenters
      template_name = templated_policies.value.template_name
      dynamic "template_variables" {
        for_each = templated_policies.value.template_variables != null ? [templated_policies.value.template_variables] : []
        content {
          name = template_variables.value.name
        }
      }
    }
  }
}

