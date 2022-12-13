terraform {
  backend "gcs" {
    bucket = "canonical-foo-infra-tf"
    prefix = "dev"
  }
}

module "everything" {
  source = "../../modules/everything"

  project_id = "cshou-jvs"
  name       = "hello-svc-dev"
}
