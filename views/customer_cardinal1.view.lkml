view: customer_cardinal1 {
  sql_table_name: "LOOKER_TEST"."CUSTOMER_CARDINAL1"
    ;;

  dimension: add_line1 {
    type: string
    sql: ${TABLE}."ADD_LINE1" ;;
  }

  dimension: add_line2 {
    type: string
    sql: ${TABLE}."ADD_LINE2" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: cont_first_name {
    type: string
    sql: ${TABLE}."CONT_FIRST_NAME" ;;
  }

  dimension: cont_last_name {
    type: string
    sql: ${TABLE}."CONT_LAST_NAME" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: credit_limit {
    type: number
    sql: ${TABLE}."CREDIT_LIMIT" ;;
  }

  dimension: cus_name {
    type: string
    sql: ${TABLE}."CUS_NAME" ;;
  }

  dimension: customer_number {
    type: number
    sql: ${TABLE}."CUSTOMER_NUMBER" ;;
  }

  dimension: emp_num {
    type: string
    sql: ${TABLE}."EMP_NUM" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: postal {
    type: string
    sql: ${TABLE}."POSTAL" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }
measure: credit {
  type: sum
  sql: ${credit_limit} ;;
}
  measure: count {
    type: count
    drill_fields: [cus_name, cont_last_name, cont_first_name]
  }

 dimension: Credit_tier {
   type: string
  sql: CASE WHEN ${credit_limit} >10000 then ' Level 1 User'
  WHEN ${credit_limit} >100000 Then ' Level 2 User'
  ELSE 'Default User'
  END;;
 }

dimension: Full_name {
  type: string
  sql: ${cont_first_name} ||${cont_last_name} ;;
}
}
