module "subnet_mod" {
  source        = "./modules/subnets"
  vpc_id_subnet = module.vpc_mod.vpc_id
  cidr_subnet = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24","10.0.4.0/24"]
  team          = "devoleper"
  env           = "testing"
}