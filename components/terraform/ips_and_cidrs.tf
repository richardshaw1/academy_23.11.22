# ===================================================================================================================
# GETTING THE NECESSARY VARIABLES FOR THE SECURITY GROUP RULES
# ===================================================================================================================
# ===================================================================================================================
# LOCAL VARIABLES
# ===================================================================================================================
locals {
  internet_cidr             = "0.0.0.0/0"     # Internet CIDR range
  vpc_a_cidr                = "10.2.0.0/16"   # The CIDR range for VPC-A
  vpc_b_cidr                = "10.3.0.0/16"   # The CIDR range for VPC-B
  vpc_a_squid_a_sn_cidr     = "10.2.0.0/27"   # The CIDR range for the VPC-A public-subnet-01
  vpc_a_squid_b_sn_cidr     = "10.2.0.32/27"  # The CIDR range for the VPC-A public-subnet-02
  vpc_a_nat_sn_cidr         = "10.2.0.64/27"  # The CIDR range for the VPC-A public-subnet-(NAT)
  vpc_a_tgw_a_sn_cidr       = "10.2.0.96/27"  # The CIDR range for the VPC-A tgw-A-subnet
  vpc_a_tgw_b_sn_cidr       = "10.2.0.128/27" # The CIDR range for the VPC-A tgw-B-subnet
  vpc_b_priv_app_a_sn_cidr  = "10.3.0.0/27"   # The CIDR range for the VPC-B Private-App-01-subnet
  vpc_b_priv_app_b_sn_cidr  = "10.3.0.32/27"  # The CIDR range for the VPC-B Private-App-02-subnet
  vpc_b_priv_data_a_sn_cidr = "10.3.0.64/27"  # The CIDR range for the VPC-B Private-Data-01-subnet
  vpc_b_priv_data_b_sn_cidr = "10.3.0.96/27"  # The CIDR range for the VPC-B Private-Data-02-subnet
}