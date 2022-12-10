variable "project_id" {
  description = "GCP project id."
  type        = string
}

variable "name" {
  description = "The name of the resource to be created."
  type        = string
}

variable "region" {
  description = "The region of the service."
  type        = string
  default     = "us-central1"
}
