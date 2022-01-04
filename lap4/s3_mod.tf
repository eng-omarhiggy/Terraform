module "s3_mod" {
  source ="./modules/s3"
  env = "TESTING"
  team = "DEVELPERS"
}