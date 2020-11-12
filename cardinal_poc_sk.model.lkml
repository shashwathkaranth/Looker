connection: "orderdetails"

datagroup: cardinal_poc_sk_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cardinal_poc_sk_default_datagroup
