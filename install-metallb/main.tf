module "metellb_namespace" {
  source                 = "./modules/metellb_namespace"
  kubernetes_config_path = var.kubernetes_config_path

  namespace = var.namespace
}

module "metellb" {
  depends_on = [module.metellb_namespace]

  source                 = "./modules/metellb"
  kubernetes_config_path = var.kubernetes_config_path

  namespace = var.namespace
  name      = var.name

  repository    = var.repository
  chart         = var.chart
  chart_version = var.chart_version
}



