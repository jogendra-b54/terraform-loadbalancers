module "alb-public" {
  source                    = "./vendor/modules/alb"
  ENV                       = var.ENV
  ALB_NAME                  = "robot-public-alb"
  INTERNAL                  = false
  LB_TYPE                   = "external"
  
}

module "alb-private" {
  source                    = "./vendor/modules/alb"
  ENV                       = var.ENV
  ALB_NAME                  = "robot-private-alb"
  INTERNAL                  = true
  LB_TYPE                   = "internal"
}

// You cannot variablize this piece of code in the source parameter

