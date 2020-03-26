view: insight_fact {
  sql_table_name: KLAVIYO.INSIGHT_FACT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    hidden: yes
    sql: ${TABLE}."ID" ;;
  }

  dimension: _integration_account_id {
    type: string
    hidden: yes
    sql: ${TABLE}."_INTEGRATION_ACCOUNT_ID" ;;
  }

  dimension: _pid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}."_PID" ;;
  }


  dimension_group: _timestamp {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."_TIMESTAMP" ;;
  }

  dimension: account_id {
    type: string
    hidden: yes
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: campaign_id {
    type: string
    hidden: yes
    sql: ${TABLE}."CAMPAIGN_ID" ;;
  }

  dimension: insight_id {
    type: string
    hidden: yes
    sql: ${TABLE}."INSIGHT_ID" ;;
  }

  dimension_group: data {
    type: time
    hidden: no
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
    sql: ${TABLE}."DATA_DATE" ;;
  }

  dimension: metric_id {
    type: string
    hidden: yes
    sql: ${TABLE}."METRIC_ID" ;;
  }

  measure: value {
    type: sum
    sql: ${TABLE}."VALUE" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
