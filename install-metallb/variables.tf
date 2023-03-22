
variable "namespace" {
  type        = string
  description = "The namespace to deploy metallb to"
}
variable "name" {
  type        = string
  description = "The name of the metallb deployment"
}
variable "chart" {
  type        = string
  description = "The name of the chart to deploy"
}
variable "chart_version" {
  type        = string
  description = "The version of the chart to deploy"
}
variable "metellb-config_ip_range" {
  type        = string
  description = "The IP range to use for metallb"
}
variable "repository" {
  type        = string
  description = "The URL of the chart repository"
}
variable "kubernetes_config_path" {
  type        = string
  description = "The path to the kubernetes config file"
}
