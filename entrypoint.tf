module "argocd" {
  source = "./modules/argocd"
  argo_cd = var.argo_cd
}