#terraform {
#  required_version = ">= 1.4.0"
#  required_providers {
#
#    kubernetes = {
#      source = "hashicorp/kubernetes"
#      version = "2.18.1"
#    }
#
#  }
#}
#
#provider "helm" {
#  kubernetes {
#    config_path = var.kubernetes_config_path
#  }
#}

resource "helm_release" "metallb" {
#  depends_on = [kubernetes_namespace.metallb-system]
  name       = var.metallb_name
  namespace  = var.metallb_namespace

  repository = var.chart_repository
  chart      = var.chart_name
  version    = var.chart_version

  create_namespace = false
  wait             = true
  wait_for_jobs    = true

}

