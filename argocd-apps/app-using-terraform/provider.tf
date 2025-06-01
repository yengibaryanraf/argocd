terraform {
  required_providers {
    argocd = {
      source  = "argoproj-labs/argocd"
      version = "7.8.2"
    }
  }
}

provider "argocd" {
  server_addr = "a41eafbe393f9454eab588a1f92e1db1-253a426431d364e2.elb.eu-central-1.amazonaws.com"
  username    = var.username
  password    = var.password
  insecure = true
}