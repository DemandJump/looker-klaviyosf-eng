
view: event_fact {
  sql_table_name: KLAVIYO.EVENT_FACT ;;

  dimension: _integrationaccountid {
    type: string
    hidden: yes
    sql: ${TABLE}."_INTEGRATIONACCOUNTID" ;;
  }

  dimension: _pid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}."_PID" ;;
  }

  dimension: _registrationid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}."_REGISTRATIONID" ;;
  }

  dimension: _rowversion {
    type: number
    hidden: yes
    sql: ${TABLE}."_ROWVERSION" ;;
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


  dimension: accountkey {
    type: number
    hidden: yes
    sql: ${TABLE}."ACCOUNTKEY" ;;
  }

  dimension: campaignkey {
    type: number
    hidden: yes
    sql: ${TABLE}."CAMPAIGNKEY" ;;
  }

  dimension: eventid {
    type: string
    hidden: yes
    sql: ${TABLE}."EVENTID" ;;
  }

  dimension_group: event_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."EVENTTIMESTAMP" ;;
  }


  dimension: eventkey {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}."EVENTKEY" ;;
  }

  dimension: itemcount {
    type: number
    hidden: yes
    sql: ${TABLE}."ITEMCOUNT" ;;
  }

  dimension: metrickey {
    type: number
    hidden: yes
    sql: ${TABLE}."METRICKEY" ;;
  }

  dimension: personkey {
    type: number
    hidden: yes
    sql: ${TABLE}."PERSONKEY" ;;
  }

  measure: quantity {
    type: sum
    sql: ${TABLE}."QUANTITY" ;;
  }

  measure: totaldiscounts {
    type: sum
    sql: ${TABLE}."TOTALDISCOUNTS" ;;
  }

  measure: value {
    type: sum
    sql: ${TABLE}."VALUE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
