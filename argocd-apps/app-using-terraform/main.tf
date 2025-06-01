resource "argocd_application" "helm" {
  metadata {
    name      = "helm-app-terraform"
    namespace = "argocd"
    labels = {
      test = "true"
    }
  }

  spec {
    project = "default"

    destination {
      server    = "https://kubernetes.default.svc"
      namespace = "terraform"
    }

    source {
      repo_url        = "https://github.com/yengibaryanraf/argocd.git"
      target_revision = "main"
      path            = "argocd-apps/helm/nginx"
      helm {

        value_files = ["custom-values.yml"]
      }
    }
  }
}

