# The admin project and the GCS backend must be created in the org infra level.
variable "project_id" {
  type        = string
  description = "Infra admin project."
}

variable "artifact_registry_location" {
  type        = string
  default     = "us"
  description = "The artifact registry location."
}

variable "pool_provider_attribute_mapping" {
  type = map(string)
  default = {
    "google.subject"             = "assertion.jti" # unique token identifier
    "attribute.actor"            = "assertion.actor"
    "attribute.aud"              = "assertion.aud"
    "attribute.repository"       = "assertion.repository"
    "attribute.repository_owner" = "assertion.repository_owner"
    "attribute.workflow"         = "assertion.workflow"
  }
  description = "Maps attributes from authentication credentials issued by an external identity provider to Google Cloud attributes"
}

variable "environments" {
  type        = list(string)
  default     = ["dev", "prod"]
  description = "Environments."
}
