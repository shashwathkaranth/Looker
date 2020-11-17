view: order_details_cardinal {
  sql_table_name: "LOOKER_TEST"."ORDER_DETAILS_CARDINAL"
    ;;

  dimension: order_line_number {
    type: number
    sql: ${TABLE}."ORDER_LINE_NUMBER" ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}."ORDER_NUMBER" ;;
  }

  dimension: price_each {
    type: number
    sql: ${TABLE}."PRICE_EACH" ;;
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}."PRODUCT_CODE" ;;
  }

  dimension: quantity_ordered {
    type: number
    sql: ${TABLE}."QUANTITY_ORDERED" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
