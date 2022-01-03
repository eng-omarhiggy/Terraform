module "subnet_mod" {
  source        = "./modules/subnets"
  vpc_id_subnet = module.vpc_mod.vpc_id
  cidr_subnet_1 = "10.0.1.0/24"
  cidr_subnet_2 = "10.0.2.0/24"
  team          = "devoleper"
  env           = "testing"
  sub_az_1      = "us-west-1a"
  sub_az_2      = "us-west-1b"
}