module "namespace" {
  source = "farrukh90/namespace/kubernetes"
  name   = "test"
  labels = {
    environment = "dev"
  }
  annotations = {
    managed_by = "terraform"
  }
}
