module "metellb_namespace" {
  source                 = "./modules/metellb_namespace"
  kubernetes_config_path = var.kubernetes_config_path

  namespace_name = var.namespace_name

}

module "metellb" {
  depends_on = [module.metellb_namespace]

  source                 = "./modules/metellb"
  kubernetes_config_path = var.kubernetes_config_path

  metallb_name     = var.name
  namespace_name   = var.namespace_name
  chart_repository = var.chart_repository_url
  chart_name       = var.chart_name
  chart_version    = var.chart_version

}

#module "metellb-config" {
#  depends_on             = [module.metellb]
#  source                 = "./modules/metellb-config"
#  kubernetes_config_path = var.kubernetes_config_path
#
#  namespace_name        = var.namespace_name
#  address_pool_ip_range = var.metellb-config_ip_range
#
#}

