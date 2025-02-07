terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "1.0.3"
    }
  }
}

provider "snowflake" {
  account_name      = "yab90454"
  organization_name = "ercpqao"
  user              = "WINTER"
  password          = "Dev@ccountforsnowflake1"
  role              = "SYSADMIN"
}

resource "snowflake_database" "dev_snowflake_database" {
  name = "DEV_DATA_BASE"
}
