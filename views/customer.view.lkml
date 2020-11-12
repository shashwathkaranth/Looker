view: customer {
  sql_table_name: "LOOKER_TEST"."CUSTOMER"
    ;;
  drill_fields: [customer_id]

  dimension: customer_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."CUSTOMER_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_id, customer_name]
  }
}
