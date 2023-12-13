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
    namespace = kubernetes_namespace.example.metadata[0].name
  }
  spec {
    hard = {
      pods = var.pod_limit
    }
    scopes = ["BestEffort"]
  }
}
