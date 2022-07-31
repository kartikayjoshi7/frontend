module "app-module" {
  source           = "git::https://github.com/kartikayjoshi7/terraform-mutable-app-module.git"
  INSTANCE_COUNT   = var.INSTANCE_COUNT
  INSTANCE_TYPE    = var.INSTANCE_TYPE
  COMPONENT        = var.COMPONENT
  ENV              = var.ENV
  APP_VERSION      = var.APP_VERSION
  APP_PORT         = 80
  LB_RULE_PRIORITY = 300
  LB_PUBLIC      = true
}