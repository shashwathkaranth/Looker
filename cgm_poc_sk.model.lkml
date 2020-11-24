connection: "cgm_poc"

include: "*.view"

datagroup: cgm_poc_sk_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cgm_poc_sk_default_datagroup

explore: cgm_data {
}
explore: cgm_created_closed {}
explore: indivisual_patient_info {
  join: cgm_created_closed {
    type: left_outer
    relationship: one_to_one
    sql_on: ${indivisual_patient_info.customer_order_number}=${cgm_created_closed.customer_order_number} ;;
  }
}
