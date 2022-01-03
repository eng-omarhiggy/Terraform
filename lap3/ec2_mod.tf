module "ec2_mod" {
  team           = "dev"
  env            = "testing"
  source         = "git@github.com:eng-omarhiggy/rds_module.git"
  ec2_ami        = "ami-03af6a70ccd8cb578"
  inst_type      = "t2.micro"
  inst_az        = "us-west-1a"
  inst_sec_group = module.sec_group_mod.sec_group_id
  ins_subnet_id  = module.subnet_mod.subnet_1_id
}