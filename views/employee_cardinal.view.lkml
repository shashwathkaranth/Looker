view: employee_cardinal {
  sql_table_name: "LOOKER_TEST"."EMPLOYEE_CARDINAL"
    ;;

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: employee_number {
    type: number
    sql: ${TABLE}."EMPLOYEE_NUMBER" ;;
  }

  dimension: extension {
    type: string
    sql: ${TABLE}."EXTENSION" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}."JOB_TITLE" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension: office_code {
    type: number
    sql: ${TABLE}."OFFICE_CODE" ;;
  }

  dimension: reports_to {
    type: string
    sql: ${TABLE}."REPORTS_TO" ;;
  }

  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }



}
