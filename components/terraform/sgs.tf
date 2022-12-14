# ======================================================================================================================
# SECURITY groupS AND RULES
# ======================================================================================================================
# ======================================================================================================================
# VARIABLES
# ======================================================================================================================
variable "sgs" {
  description = "A map of all the ec2 security groups to create"
  default     = {}
}

variable "ec2_sg_description" {
  description = "Description for the ec2 security group"
  default     = "Security group"
}

variable "inbound_rules_tcp_sp_cidr" {
  description = "A map of all rules that are TCP, single port with a CIDR ranges"
  default     = {}
}

variable "inbound_rules_tcp_sp_sg" {
  type        = map(any)
  description = "a map of all rules that are tcp, single port with a security group"
  default     = {}
}

variable "egress_all" {
  type        = map(any)
  description = "a map of all egress rules"
  default     = {}
}

# ===================================================================================================================
# RESOURCES
# ===================================================================================================================
resource "aws_security_group" "ec2_sg" {
  for_each    = var.sgs
  name        = lookup(each.value, "ec2_sg_name_suffix", null) != null ? "${local.name_prefix}-${lookup(each.value, "ec2_sg_name_suffix", "")}-sg" : "${lookup(each.value, "ec2_sg_name", "")}-sg"
  description = lookup(each.value, "ec2_sg_description", "")
  vpc_id      = aws_vpc.env_vpc[0].id

  tags = merge(
    local.default_tags,
    {
      "Name" = lookup(each.value, "ec2_sg_name_suffix", null) != null ? "${local.name_prefix}-${lookup(each.value, "ec2_sg_name_suffix", "")}-sg" : "${lookup(each.value, "ec2_sg_name", "")}-sg"
    },
  )

  /* lifecycle {
    prevent_destroy = true
  } */
}

##
## RULES START HERE
##
# ===================================================================================================================
# INGRESS TRAFFIC
# ===================================================================================================================

resource "aws_security_group_rule" "ec2_sg_rule_ingress_tcp_sp_cidr" {
  for_each          = var.inbound_rules_tcp_sp_cidr
  type              = "ingress"
  from_port         = lookup(each.value, "port", "")
  to_port           = lookup(each.value, "port", "")
  protocol          = "tcp"
  cidr_blocks       = lookup(each.value, "cidr_blocks", [])
  security_group_id = aws_security_group.ec2_sg[lookup(each.value, "my_sg", "")].id
  description       = lookup(each.value, "description", "")
}

resource "aws_security_group_rule" "ec2_sg_rule_ingress_tcp_sp_sg" {
  for_each                 = var.inbound_rules_tcp_sp_sg
  type                     = "ingress"
  from_port                = lookup(each.value, "port", "")
  to_port                  = lookup(each.value, "port", "")
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.ec2_sg[lookup(each.value, "source_sg", "")].id
  security_group_id        = aws_security_group.ec2_sg[lookup(each.value, "my_sg", "")].id
  description              = lookup(each.value, "description", "")
}
# -------------------------------------------------------------------------------------------------------------------
# egress traffic
# -------------------------------------------------------------------------------------------------------------------
resource "aws_security_group_rule" "ec2_sg_rule_egress_all" {
  for_each          = var.egress_all
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.ec2_sg[lookup(each.value, "my_sg", "")].id
  description       = "egress"
}