view: order_cardinal {
  sql_table_name: "LOOKER_TEST"."ORDER_CARDINAL"
    ;;

  dimension: comments {
    type: string
    sql: ${TABLE}."COMMENTS" ;;
  }

  dimension: customer_number {
    primary_key: yes
    type: number
    sql: ${TABLE}."CUSTOMER_NUMBER" ;;
  }

  dimension: order_date {
    type: string
    sql: ${TABLE}."ORDER_DATE" ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}."ORDER_NUMBER" ;;
  }

  dimension: required_date {
    type: string
    sql: ${TABLE}."REQUIRED_DATE" ;;
  }

  dimension: shipped_date {
    type: string
    sql: ${TABLE}."SHIPPED_DATE" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }


dimension: Order_Processing_time{
  type: number
  sql: DATEDIFF(day,${order_date},${shipped_date} ;;
}

dimension: In_Time {
  type: yesno
  sql: ${Order_Processing_time}<=90 ;;
}

}
