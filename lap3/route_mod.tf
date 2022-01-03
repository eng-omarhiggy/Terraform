module "route_mod" {
  source             = "./modules/routes"
  vpc_id_route_tb    = module.vpc_mod.vpc_id
  route_tb_cidr      = "0.0.0.0/0"
  route_tb_getway_id = module.igw_mod.igw_id
  team               = "dev"
  env                = "testing"
}