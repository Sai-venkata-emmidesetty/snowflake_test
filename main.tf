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
  role              = "ACCOUNTADMIN"
}

resource "snowflake_database" "dev_snowflake_database" {
  name = "DEV_DATA_BASE"
  catalog = ""
  comment =  ""
  data_retention_time_in_days = 1
  default_ddl_collation = ""
  enable_console_output = false
  external_volume = ""
  is_transient = false
  log_level = "OFF"
  max_data_extension_time_in_days = 14
  quoted_identifiers_ignore_case = false
  replace_invalid_characters = false
  storage_serialization_policy = "OPTIMIZED"
  suspend_task_after_num_failures = 10
  task_auto_retry_attempts = 0
  trace_level = "OFF"
  user_task_managed_initial_warehouse_size = "Medium"
  user_task_minimum_trigger_interval_in_seconds = 30
  user_task_timeout_ms = 3600000
}
