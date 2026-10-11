resource "google_gke_hub_membership" "gke_hub_memberships" {
  for_each = var.gke_hub_memberships

  membership_id   = each.value.membership_id
  deletion_policy = each.value.deletion_policy
  labels          = each.value.labels
  location        = each.value.location
  project         = each.value.project

  dynamic "authority" {
    for_each = each.value.authority != null ? [each.value.authority] : []
    content {
      issuer = authority.value.issuer
    }
  }

  dynamic "endpoint" {
    for_each = each.value.endpoint != null ? [each.value.endpoint] : []
    content {
      dynamic "gke_cluster" {
        for_each = endpoint.value.gke_cluster != null ? [endpoint.value.gke_cluster] : []
        content {
          resource_link = gke_cluster.value.resource_link
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

