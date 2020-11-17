view: cgm_data {
  sql_table_name: "LOOKER_TEST"."CGM_DATA"
    ;;

  dimension: audit_queue {
    type: string
    sql: ${TABLE}."AUDIT_QUEUE" ;;
  }

  dimension_group: birth {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."BIRTH_DATE" ;;
  }

  dimension_group: c1_year_month_ordere {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."C1YEAR_MONTH_ORDERE" ;;
  }

  dimension: cancel_other {
    type: string
    sql: ${TABLE}."CANCEL_OTHER" ;;
  }

  dimension: cancel_reason {
    type: number
    sql: ${TABLE}."CANCEL_REASON" ;;
  }

  dimension: cancel_reason_desc {
    type: string
    sql: ${TABLE}."CANCEL_REASON_DESC" ;;
  }

  dimension: customer_number {
    type: string
    sql: ${TABLE}."CUSTOMER_NUMBER" ;;
  }

  dimension: customer_order_number {
    type: string
    sql: ${TABLE}."CUSTOMER_ORDER_NUMBER" ;;
  }

  dimension: customer_state {
    type: string
    sql: ${TABLE}."CUSTOMER_STATE" ;;
  }

  dimension_group: date_audit_closed {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE_AUDIT_CLOSED" ;;
  }

  dimension_group: date_audit_created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE_AUDIT_CREATED" ;;
  }

  dimension: did_we_make_contact {
    type: string
    sql: ${TABLE}."DID_WE_MAKE_CONTACT" ;;
  }

  dimension: doctor_state {
    type: string
    sql: ${TABLE}."DOCTOR_STATE" ;;
  }

  dimension: high_level_status {
    type: string
    sql: ${TABLE}."HIGH_LEVEL_STATUS" ;;
  }

  dimension: ins1 {
    type: number
    sql: ${TABLE}."INS1" ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}."MANUFACTURER" ;;
  }

  dimension: marketcode {
    type: string
    sql: ${TABLE}."MARKETCODE" ;;
  }

  dimension: new_order_reorder_to_mfg {
    type: string
    sql: ${TABLE}."NEW_ORDER_REORDER_TO_MFG" ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}."ORDER_NUMBER" ;;
  }

  dimension: order_processing_function {
    type: string
    sql: ${TABLE}."ORDER_PROCESSING_FUNCTION" ;;
  }

  dimension: population_type {
    type: string
    sql: ${TABLE}."POPULATION_TYPE" ;;
  }

  dimension: potential_rx_customer {
    type: string
    sql: ${TABLE}."POTENTIAL_RX_CUSTOMER" ;;
  }

  dimension: queue_pod {
    type: number
    sql: ${TABLE}."QUEUE_POD" ;;
  }

  dimension: reason_code {
    type: number
    sql: ${TABLE}."REASON_CODE" ;;
  }

  dimension: reason_code_description {
    type: string
    sql: ${TABLE}."REASON_CODE_DESCRIPTION" ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}."SEX" ;;
  }

  dimension: vendor_prefix {
    type: string
    sql: ${TABLE}."VENDOR_PREFIX" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
