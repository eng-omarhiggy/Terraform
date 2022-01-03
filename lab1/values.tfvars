# main eviroment ---------
provider_region_main = "us-west-1"
vpc_cidr_main        = "10.0.0.0/16"
vpc_main_name        = "first"
#------------------------

# public subnets --------
public_subnet       = "public_subnet-1"
cidr_public_subnet  = "10.0.1.0/24"
secound_subnet      = "public_subnet-1"
cidr_secound_subnet = "10.0.2.0/24"
#------------------------

# privet subnets -------
privet_subnet_1      = "privet_subnet-1"
cidr_privet_subnet_1 = "10.0.3.0/24"
privet_subnet_2      = "privet_subnet-2"
cidr_privet_subnet_2 = "10.0.4.0/24"
#------------------------

# subnet az -------------
az_1 = "us-west-1b"
az_2 = "us-west-1a"
#------------------------

# public network routs ---
public_gw = "public_gw"
els_ip    = "public_els"
nat_gw    = "public_nat"
#--------------------------
# privet network ----------
privet_subnet_ngw      = "privet_gw"
privet_subnet_ngw_cidr = "0.0.0.0/24"
#--------------------------