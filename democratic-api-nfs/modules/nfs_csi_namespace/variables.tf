
variable "namespace" {
  type        = string
  description = "The namespace to deploy the CSI driver to"
}

variable "kubernetes_config_path" {
  type        = string
  description = "The path to the kubernetes config file"
}

