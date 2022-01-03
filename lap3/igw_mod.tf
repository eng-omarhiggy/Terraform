module "igw_mod" {
  source    = "./modules/internet_getway"
  vpc_id_gw = module.vpc_mod.vpc_id
  team      = "dev"
  env       = "testing"
}