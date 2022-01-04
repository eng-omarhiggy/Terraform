module "sec_group_mod" {
  source         = "./modules/secgrb"
  vpc_id         = module.vpc_mod.vpc_id
  sec_group_cidr = module.vpc_mod.vpc_cidr
  team           = "dev"
  env            = "testing"
}