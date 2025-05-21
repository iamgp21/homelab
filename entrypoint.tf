module "argo_cd" {
  source = "./modules/argocd"
  argo_cd = var.argo_cd
}