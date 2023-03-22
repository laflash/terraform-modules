
variable "namespace_name" {
  type    = string
}
variable "name" {
  type    = string
}
variable "chart_name" {
  type    = string
}
variable "chart_version" {
  type    = string
}
variable "metellb-config_ip_range" {
  type        = string
  description = "The IP range to use for metallb"
}
variable "chart_repository_url" {
  type    = string
  description = "The URL of the helm chart repository"
}
variable "kubernetes_config_path" {
  type        = string
  description = "The path to the kubernetes config file"
}

