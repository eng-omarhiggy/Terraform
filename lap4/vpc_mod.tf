module "vpc_mod" {
  source        = "./modules/vpc"
  main_vpc_cidr = "10.0.0.0/16"
  team          = "devopler"
  env           = "testing"
}