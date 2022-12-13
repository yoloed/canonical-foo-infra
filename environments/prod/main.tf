terraform {
  backend "gcs" {
    bucket = "canonical-foo-infra-tf"
    prefix = "prod"
  }
}

module "everything" {
  source = "../../modules/everything"

  project_id = "cshou-jvs"
  name       = "hello-svc-prod"
}
