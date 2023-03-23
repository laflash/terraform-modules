
variable "namespace" {
  type = string
  description = "The namespace to deploy the application to"
}

variable "address_pool_ip_range" {
  type = string
  description = "The IP range to use for the address pool"

}
variable "kubernetes_config_path" {
  type = string
  description = "The path to the kubernetes config file"
}

