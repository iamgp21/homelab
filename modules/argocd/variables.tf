variable "argo_cd" {
    type = map(object({
        name             = string
        repository       = string
        chart            = string
        namespace        = string
        create_namespace = bool
        version          = string
        replace = bool
        force_update = bool
        upgrade_install = bool
    }))
  
}