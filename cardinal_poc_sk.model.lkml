connection: "orderdetails"

include: "/views/**/*.view"

datagroup: cardinal_poc_sk_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cardinal_poc_sk_default_datagroup


explore: customer_cardinal1{
  join: order_cardinal {
    type: left_outer
    sql_on: ${customer_cardinal1.customer_number}=${order_cardinal.customer_number} ;;
    relationship: one_to_many
  }
  join: order_details_cardinal {
    type: left_outer
    sql_on: ${order_cardinal.order_number}=${order_details_cardinal.order_number} ;;
    relationship: one_to_many
  }
   join: product {
     type: left_outer
    sql_on: ${order_details_cardinal.product_code}=${product.product_code} ;;
    relationship: one_to_many
   }
}
explore: customer {}
explore: order_cardinal {}
explore: product {}
explore: order_details_cardinal {}
