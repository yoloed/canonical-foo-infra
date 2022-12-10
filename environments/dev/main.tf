terraform {
  backend "gcs" {
    bucket = "canonical-foo-tf"
    prefix = "dev"
  }
}

module "everything" {
  source = "../../modules/everything"

  project_id = "cshou-jvs"
  name       = "hello-svc"
}
