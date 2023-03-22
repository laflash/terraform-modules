resource "kubernetes_namespace" "metallb_namespace" {
  metadata {
    name = var.namespace
    annotations = {
      name = var.namespace
    }
    labels = {
      "pod-security.kubernetes.io/enforce":"privileged"
      "pod-security.kubernetes.io/audit":"privileged"
      "pod-security.kubernetes.io/warn":"privileged"
    }
  }
}
