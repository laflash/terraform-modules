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

#variable "csi_driver_name" {
#  type        = string
#  description = "The name of the csi driver"
#  default     = "org.democratic-csi.nfs-api"
#}
#
#
#
#variable "driver_config_driver" {
#  type        = string
#  description = "The image to use for the csi driver"
#  default     = "freenas-api-nfs"
#}



#variable "driver_config_httpConnection_host" {
#  type        = string
#  description = "The host to connect to"
#  default     = "10.8.0.53"
#}
#
#variable "driver_config_httpConnection_protocol" {
#  type        = string
#  description = "The protocol to use"
#  default     = "http"
#}
#
#variable "driver_config_httpConnection_port" {
#  type        = string
#  description = "The port to use"
#  default     = "80"
#}
#
#variable "driver_config_httpConnection_apiKey" {
#  type = string
#  description = "TrueNAS API Key"
#  default = "1-MWLpgBZ7fwnwAdXMspxxb3s1wdCrKzU4m04DiUzKai71xr4BZ2IgYM9d3fKWUHtR"
#}
#variable "driver_config_httpConnection_allowInsecure" {
#    type        = bool
#    description = "Allow insecure connections"
#    default     = true
#}
#
#variable "driver_config_zfs_datasetParentName" {
#    type        = string
#    description = "The parent dataset to use"
#    default     = "pool/talos/a/vols"
#}
#
#variable "driver_config_zfs_detachedSnapshotsDatasetParentName" {
#    type        = string
#    description = "The parent dataset to use for detached snapshots"
#    default     = "pool/talos/a/snaps"
#}
#variable "driver_config_nfs_shareHost" {
#    type        = string
#    description = "The host to use for nfs shares"
#    default     = "10.8.0.53"
#}
#variable "driver_config_nfs_shareMaprootUser" {
#    type        = string
#    description = "The user to use for nfs shares"
#    default     = "root"
#}
#variable "driver_config_nfs_shareMaprootGroup" {
#    type        = string
#    description = "The group to use for nfs shares"
#    default     = "root"
#}
