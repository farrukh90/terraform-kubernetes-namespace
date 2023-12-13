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
    namespace = kubernetes_namespace.example.metadata.name
  }
  spec {
    hard = {
      pods = 1000
    }
    scopes = ["BestEffort"]
  }
}
