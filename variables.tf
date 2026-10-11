variable "gke_hub_memberships" {
  description = <<EOT
Map of gke_hub_memberships, attributes below
Required:
    - membership_id
Optional:
    - deletion_policy
    - labels
    - location
    - project
    - authority (block):
        - issuer (required)
    - endpoint (block):
        - gke_cluster (optional, block):
            - resource_link (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    membership_id   = string
    deletion_policy = optional(string)
    labels          = optional(map(string))
    location        = optional(string)
    project         = optional(string)
    authority = optional(object({
      issuer = string
    }))
    endpoint = optional(object({
      gke_cluster = optional(object({
        resource_link = string
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

