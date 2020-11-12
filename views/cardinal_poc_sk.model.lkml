connection: "orderdetails"



datagroup: Cardinal_Poc_sk_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
    }

persist_with: Cardinal_Poc_sk_default_datagroup
view: cus_cardinal {}
view: customer {}
