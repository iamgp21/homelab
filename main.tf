resource "helm_release" "argo_cd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true
  version          = "8.0.6"
  replace = true
  force_update = true
  values = [
    file("${path.root}/helm-values/argocd.yaml")
  ]
}