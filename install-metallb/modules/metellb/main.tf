resource "helm_release" "metallb" {
  name       = var.name
  namespace  = var.namespace

  repository = var.repository
  chart      = var.chart
  version    = var.chart_version

  create_namespace = false
  wait             = true
  wait_for_jobs    = true

}

