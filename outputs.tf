output "gke_hub_memberships_id" {
  description = "Map of id values across all gke_hub_memberships, keyed the same as var.gke_hub_memberships except keys with no id are omitted"
  value       = { for k, v in google_gke_hub_membership.gke_hub_memberships : k => v.id if v.id != null && length(v.id) > 0 }
}
output "gke_hub_memberships_authority" {
  description = "Map of authority values across all gke_hub_memberships, keyed the same as var.gke_hub_memberships except keys with no authority are omitted"
  value       = { for k, v in google_gke_hub_membership.gke_hub_memberships : k => one(v.authority) if v.authority != null && length(v.authority) > 0 }
}
output "gke_hub_memberships_deletion_policy" {
  description = "Map of deletion_policy values across all gke_hub_memberships, keyed the same as var.gke_hub_memberships except keys with no deletion_policy are omitted"
  value       = { for k, v in google_gke_hub_membership.gke_hub_memberships : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "gke_hub_memberships_effective_labels" {
  description = "Map of effective_labels values across all gke_hub_memberships, keyed the same as var.gke_hub_memberships except keys with no effective_labels are omitted"
  value       = { for k, v in google_gke_hub_membership.gke_hub_memberships : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "gke_hub_memberships_endpoint" {
  description = "Map of endpoint values across all gke_hub_memberships, keyed the same as var.gke_hub_memberships except keys with no endpoint are omitted"
  value       = { for k, v in google_gke_hub_membership.gke_hub_memberships : k => one(v.endpoint) if v.endpoint != null && length(v.endpoint) > 0 }
}
output "gke_hub_memberships_labels" {
  description = "Map of labels values across all gke_hub_memberships, keyed the same as var.gke_hub_memberships except keys with no labels are omitted"
  value       = { for k, v in google_gke_hub_membership.gke_hub_memberships : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "gke_hub_memberships_location" {
  description = "Map of location values across all gke_hub_memberships, keyed the same as var.gke_hub_memberships except keys with no location are omitted"
  value       = { for k, v in google_gke_hub_membership.gke_hub_memberships : k => v.location if v.location != null && length(v.location) > 0 }
}
output "gke_hub_memberships_membership_id" {
  description = "Map of membership_id values across all gke_hub_memberships, keyed the same as var.gke_hub_memberships except keys with no membership_id are omitted"
  value       = { for k, v in google_gke_hub_membership.gke_hub_memberships : k => v.membership_id if v.membership_id != null && length(v.membership_id) > 0 }
}
output "gke_hub_memberships_name" {
  description = "Map of name values across all gke_hub_memberships, keyed the same as var.gke_hub_memberships except keys with no name are omitted"
  value       = { for k, v in google_gke_hub_membership.gke_hub_memberships : k => v.name if v.name != null && length(v.name) > 0 }
}
output "gke_hub_memberships_project" {
  description = "Map of project values across all gke_hub_memberships, keyed the same as var.gke_hub_memberships except keys with no project are omitted"
  value       = { for k, v in google_gke_hub_membership.gke_hub_memberships : k => v.project if v.project != null && length(v.project) > 0 }
}
output "gke_hub_memberships_terraform_labels" {
  description = "Map of terraform_labels values across all gke_hub_memberships, keyed the same as var.gke_hub_memberships except keys with no terraform_labels are omitted"
  value       = { for k, v in google_gke_hub_membership.gke_hub_memberships : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

