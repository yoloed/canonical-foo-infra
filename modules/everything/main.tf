resource "google_cloud_run_service" "default" {
  name     = var.name
  location = var.region
  project  = var.project_id

  template {
    spec {
      containers {
        # Used to bootstrap the service.
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }

  lifecycle {
    ignore_changes = [
      template[0].spec[0].containers[0].image,
      template[0].spec[0].containers[0].env,
    ]
  }
}
