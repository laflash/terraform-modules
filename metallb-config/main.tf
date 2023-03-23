
resource "kubernetes_manifest" "IPAddressPool"{
  manifest = {
    apiVersion = "metallb.io/v1beta1"
    kind       = "IPAddressPool"
    metadata   = {
      name      = "first-pool"
      namespace = var.namespace
    }
    spec = {
      addresses = [
        var.address_pool_ip_range
      ]
    }
  }
}

resource "kubernetes_manifest" "L2Advertisement"{
  manifest = {
    apiVersion = "metallb.io/v1beta1"
    kind       = "L2Advertisement"
    metadata   = {
      name      = "l2-advert"
      namespace = var.namespace
    }
  }
}

