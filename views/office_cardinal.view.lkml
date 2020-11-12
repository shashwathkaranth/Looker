view: office_cardinal {
  sql_table_name: "LOOKER_TEST"."OFFICE_CARDINAL"
    ;;

  dimension: address_line1 {
    type: string
    sql: ${TABLE}."ADDRESS_LINE1" ;;
  }

  dimension: address_line2 {
    type: string
    sql: ${TABLE}."ADDRESS_LINE2" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: office_code {
    type: number
    sql: ${TABLE}."OFFICE_CODE" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."POSTAL_CODE" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: territory {
    type: string
    sql: ${TABLE}."TERRITORY" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
