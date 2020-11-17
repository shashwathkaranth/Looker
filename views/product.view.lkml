view: product {
  sql_table_name: "LOOKER_TEST"."PRODUCT"
    ;;

  dimension: buy_price {
    type: number
    sql: ${TABLE}."BUY_PRICE" ;;
  }

  dimension: msrp {
    type: number
    sql: ${TABLE}."MSRP" ;;
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}."PRODUCT_CODE" ;;
  }

  dimension: product_description {
    type: string
    sql: ${TABLE}."PRODUCT_DESCRIPTION" ;;
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}."PRODUCT_LINE" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."PRODUCT_NAME" ;;
  }

  dimension: product_scale {
    type: string
    sql: ${TABLE}."PRODUCT_SCALE" ;;
  }

  dimension: product_vendor {
    type: string
    sql: ${TABLE}."PRODUCT_VENDOR" ;;
  }

  dimension: quantity_in_stock {
    type: number
    sql: ${TABLE}."QUANTITY_IN_STOCK" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
  measure: Profit {
    type: number
    value_format_name: usd
    sql: ${msrp}-${buy_price} ;;

  }
  measure: Quantity {
    type: number
    sql: ${quantity_in_stock} ;;
  }
}
