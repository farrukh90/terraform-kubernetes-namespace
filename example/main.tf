module "namespace" {
  source = "farrukh90/namespace/kubernetes"
  name   = "test"
  pod_limit = 1000
  labels = {
    environment = "dev"
  }
  annotations = {
    managed_by = "terraform"
  }
}
