variable "kubernetes_config_path" {
  type        = string
  description = "The path to the kubernetes config file"
}

variable "name" {
  type        = string
  description = "The name of the deployment"
}

variable "namespace" {
  type        = string
  description = "The namespace to deploy to"
}

variable "repository" {
  type        = string
  description = "The repository to pull the image from"
}

variable "chart" {
  type        = string
  description = "The chart to deploy"
}
variable "chart_version" {
  type        = string
  description = "The version of the chart to deploy"
}

variable "nfs_helm_values_file" {
  type        = string
  description = "The path to the helm values file"
}

