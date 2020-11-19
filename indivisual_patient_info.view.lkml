view: indivisual_patient_info {
  derived_table: {
    sql: Select distinct CUSTOMER_ORDER_NUMBER , HIGH_LEVEL_STATUS, POPULATION_TYPE, MANUFACTURER, BIRTH_DATE ,SEX, CUSTOMER_STATE ,DOCTOR_STATE from CGM_DATA
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

  dimension: high_level_status {
    type: string
    sql: ${TABLE}."HIGH_LEVEL_STATUS" ;;
  }

  dimension: population_type {
    type: string
    sql: ${TABLE}."POPULATION_TYPE" ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}."MANUFACTURER" ;;
  }

  dimension: birth_date {
    type: date
    sql: ${TABLE}."BIRTH_DATE" ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}."SEX" ;;
  }

  dimension: customer_state {
    type: string
    sql: ${TABLE}."CUSTOMER_STATE" ;;
  }

  dimension: doctor_state {
    type: string
    sql: ${TABLE}."DOCTOR_STATE" ;;
  }

  set: detail {
    fields: [
      customer_order_number,
      high_level_status,
      population_type,
      manufacturer,
      birth_date,
      sex,
      customer_state,
      doctor_state
    ]
  }



  dimension: Age_InDays {
    type: number
    sql: DATEDIFF(day,${birth_date},GETDATE());;

      }

      dimension: Age {
        type: number
        sql: ${Age_InDays} / 365.25 ;;
        value_format: "0"

      }

  dimension: age_tier {
    type: tier
    tiers: [0, 10, 20, 30, 40, 50, 60, 70, 80]
    style: classic # the default value, could be excluded
    sql: ${Age} ;;
    value_format: "0"
    }
}
