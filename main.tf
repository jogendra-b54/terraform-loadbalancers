module "alb-public" {
  source                    = "./vendor/modules/alb"
  ENV                       = var.ENV
  ALB_NAME                  = "roboshop-public-alb"
  INTERNAL                  = false
}

module "alb-private" {
  source                    = "./vendor/modules/alb"
  ENV                       = var.ENV
  ALB_NAME                  = "roboshop-private-alb"
  INTERNAL                  = true
}

// You cannot variablize this piece of code in the source parameter

