resource "kubernetes_namespace" "example" {
  metadata {
    annotations = var.annotations
    labels      = var.labels
    name        = var.name
  }
}

resource "kubernetes_resource_quota" "pod-limit" {
  metadata {
    name = "pod-limit"
  }
  spec {
    hard = {
      pods = 1000
    }
    scopes = ["BestEffort"]
  }
}
