module "rds_mod" {
  source           = "./modules/rds"
  db_storage       = 10
  db_engine        = "mysql"
  egine_version    = "5.7"
  instance_class   = "db.t3.micro"
  db_name          = "mydb"
  db_user_name     = "foo"
  db_pass_word     = "foobarbaz"
  prams_group_name = "default.mysql5.7"
  sub_group        = module.sub_goup_mod.sub_grb_name
  az               = ["us-west-1a", "us-west-1b"]
}

module "sub_goup_mod" {
  source      = "./modules/subnet_group"
  subnet_id_1 = module.subnet_mod.subnet_1_id
  subnet_id_2 = module.subnet_mod.subnet_2_id
  team        = "dev"
  env         = "testing"
}