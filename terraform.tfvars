argo_cd = {
  "argocd" = {
    name             = "argocd"
    repository       = "https://argoproj.github.io/argo-helm"
    chart            = "argo-cd"
    namespace        = "argocd"
    create_namespace = true
    version          = "8.0.6"
    replace          = true
    force_update     = true
    upgrade_install  = true
    values           = ["${path.root}/helm-values/argocd.yaml"]
    
  }
}