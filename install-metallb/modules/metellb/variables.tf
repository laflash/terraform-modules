
variable "namespace_name" {
  type = string
}

variable "metallb_name" {
}
variable "metallb_namespace" {
}

variable "chart_repository" {
}
variable "chart_name" {
}
variable "chart_version" {
}

variable "kubernetes_config_path" {
  type = string
  description = "The path to the kubernetes config file"
}

