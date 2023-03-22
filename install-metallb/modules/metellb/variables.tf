
variable "namespace" {
  type        = string
  description = "The namespace to deploy metallb into"
}

variable "name" {
  type        = string
  description = "The name of the release"
}

variable "repository" {
  type        = string
  description = "The repository to use for the chart"
}
variable "chart" {
  type        = string
  description = "The name of the chart to deploy"
}
variable "chart_version" {
  type        = string
  description = "The version of the chart to deploy"
}
variable "kubernetes_config_path" {
  type        = string
  description = "The path to the kubernetes config file"
}

