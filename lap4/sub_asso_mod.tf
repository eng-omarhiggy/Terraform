module "subnet_associ_mod" {
  source           = "./modules/sub_association"
  subnet_id_associ = module.subnet_mod.subnet_1_id
  route_tb_associ  = module.route_mod.route_tb_id
}