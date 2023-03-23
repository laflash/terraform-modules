module "nfs_csi_namespace" {
  source                 = "./modules/nfs_csi_namespace"
  kubernetes_config_path = var.kubernetes_config_path
  namespace              = var.namespace
}


resource "helm_release" "democratic_csi_nfs" {
  depends_on = [module.nfs_csi_namespace]

  name      = var.name
  namespace = var.namespace


  repository = var.repository
  chart      = var.chart
  version    = var.chart_version

  create_namespace = false
  wait             = true
  wait_for_jobs    = true

  values = [
    file(var.nfs_helm_values_file)
  ]

  #  set {
  #    name  = "csiDriver.name"
  #    value = var.csi_driver_name
  #  }
  #
  #  set {
  #    name  = "driver.config.driver"
  #    value = var.driver_config_driver
  #  }
  #
  #  set {
  #    name  = "driver.config.httpConnection.host"
  #    value = var.driver_config_httpConnection_host
  #  }
  #  set {
  #    name  = "driver.config.httpConnection.protocol"
  #    value = var.driver_config_httpConnection_protocol
  #  }
  #  set {
  #    name  = "driver.config.httpConnection.port"
  #    value = var.driver_config_httpConnection_port
  #  }
  #  set {
  #    name  = "driver.config.httpConnection.apiKey"
  #    value = var.driver_config_httpConnection_apiKey
  #  }
  #  set {
  #    name  = "driver.config.httpConnection.allowInsecure"
  #    value = var.driver_config_httpConnection_allowInsecure
  #  }
  #  set {
  #    name  = "driver.config.zfs.datasetParentName"
  #    value = var.driver_config_zfs_datasetParentName
  #  }
  #  set {
  #    name  = "driver.config.zfs.detachedSnapshotsDatasetParentName"
  #    value = var.driver_config_zfs_detachedSnapshotsDatasetParentName
  #  }
  #  set {
  #    name  = "driver.config.nfs.shareHost"
  #    value = var.driver_config_nfs_shareHost
  #  }
  #  set {
  #    name  = "driver.config.nfs.shareMaprootUser"
  #    value = var.driver_config_nfs_shareMaprootUser
  #  }
  #  set {
  #    name  = "driver.config.nfs.shareMaprootGroup"
  #    value = var.driver_config_nfs_shareMaprootGroup
  #  }
}