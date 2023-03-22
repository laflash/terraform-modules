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
#provider "kubernetes" {
#  config_path = var.kubernetes_config_path
#  experiments {
#    manifest_resource = true
#  }
#}

resource "kubernetes_namespace" "metallb_namespace" {
  metadata {
    name = var.namespace_name
    annotations = {
      name = var.namespace_name
    }
    labels = {
      "pod-security.kubernetes.io/enforce":"privileged"
      "pod-security.kubernetes.io/audit":"privileged"
      "pod-security.kubernetes.io/warn":"privileged"
    }
  }
}
