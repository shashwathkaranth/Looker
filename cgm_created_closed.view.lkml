view: cgm_created_closed {
  derived_table: {
    sql: select CUSTOMER_ORDER_NUMBER ,min(DATE_AUDIT_CREATED),max(DATE_AUDIT_CLOSED) from CGM_DATA Group by CUSTOMER_ORDER_NUMBER
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: customer_order_number {
    type: string
    sql: ${TABLE}."CUSTOMER_ORDER_NUMBER" ;;
  }

  dimension: mindate_audit_created {
    type: date
    sql: ${TABLE}."MIN(DATE_AUDIT_CREATED)" ;;
  }

  dimension: maxdate_audit_closed {
    type: date
    sql: ${TABLE}."MAX(DATE_AUDIT_CLOSED)" ;;
  }

  set: detail {
    fields: [customer_order_number, mindate_audit_created, maxdate_audit_closed]
  }
}
