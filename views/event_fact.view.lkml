
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
    label: "Revenue"
    type: sum
    sql: ${TABLE}."VALUE" ;;
    value_format_name: usd
  }

  measure: count {
    type: count_distinct
    sql: ${eventkey} ;;
    drill_fields: []
    }

  measure: number_recipients {
    type: count_distinct
    sql: ${personkey} ;;
    drill_fields: []
  }

  measure: delivered_email_count {
    label: "Received Emails"
    type: count_distinct
   sql: ${eventkey} ;;
  filters: {
    field: metric_dim.metricname
    value: "Received Email"
  }
  }

  measure: clicked_email_count {
    label: "Clicked Emails"
    type: count_distinct
   sql: ${eventkey} ;;
  filters: {
    field: metric_dim.metricname
    value: "Clicked Email"
  }
  }

  measure: opened_email_count {
    label: "Opened Emails"
    type: count_distinct
   sql: ${eventkey} ;;
  filters: {
    field: metric_dim.metricname
    value: "Opened Email"
  }
  }

  measure: conversion_count {
    label: "Conversions"
    description: "Placed Order"
    type: count_distinct
   sql: ${eventkey} ;;
  filters: {
    field: metric_dim.metricname
    value: "Placed Order"
  }
  }

  measure: bounced_email_count {
    label: "Bounced Emails"
    type: count_distinct
   sql: ${eventkey} ;;
  filters: {
    field: metric_dim.metricname
    value: "Bounced Email"
  }
  }

  measure: dropped_email_count {
    label: "Dropped Emails"
    type: count_distinct
   sql: ${eventkey} ;;
  filters: {
    field: metric_dim.metricname
    value: "Dropped Email"
  }
  }

  measure: unsubscribed_email_count {
    label: "Unsubscribed Emails"
    type: count_distinct
   sql: ${eventkey} ;;
  filters: {
    field: metric_dim.metricname
    value: "Unsubscribed"
  }
   }

  measure: spam_email_count {
    label: "Marked as Spam Emails"
    description: "Marked Email as Spam"
    type: count_distinct
   sql: ${eventkey} ;;
  filters: {
    field: metric_dim.metricname
    value: "Marked Email as Spam"
  }
  }

  measure: open_rate {
    label: "Open Rate"
    description: "Opened/Received Emails"
    type: number
   sql: ${opened_email_count}/nullif(${delivered_email_count},0) ;;
   value_format_name: percent_2
  }

  measure: ctr_rate {
    label: "Click Thru Rate"
    description: "Clicked/Open Emails"
    type: number
   sql: ${clicked_email_count}/nullif(${opened_email_count},0) ;;
   value_format_name: percent_2
  }

  measure: conversion_rate {
    label: "Conversion Rate"
    description: "Conversion/Clicked Emails"
    type: number
   sql: ${conversion_count}/nullif(${clicked_email_count},0) ;;
   value_format_name: percent_2

  }
}
