/* db_cluster = {

}
# -------------------------------------------------------------------------------------------------------------------
# Database Subnet Groups
# -------------------------------------------------------------------------------------------------------------------

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "wordpress-db-subnet-group"
  subnet_ids = ["0", "1"]

  tags = {
    Name = ""
  }
} */