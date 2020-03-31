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

  }

  measure: revenue {
    label: "Revenue"
    type: sum
    sql: ${TABLE}."VALUE" ;;

    filters: {
      field: metric_dim.metric_name
      value: "Placed Order"
    }
  }


  measure: delivered_email_count {
    label: "Received Emails"
    type: sum
    sql: ${TABLE}."VALUE" ;;

    filters: {
      field: metric_dim.metric_name
      value: "Received Email"
    }
  }

  measure: clicked_email_count {
    label: "Clicked Emails"
    type: sum
    sql: ${TABLE}."VALUE" ;;

    filters: {
      field: metric_dim.metric_name
      value: "Clicked Email"
    }
  }

  measure: opened_email_count {
    label: "Opened Emails"
    type: sum
    sql: ${TABLE}."VALUE" ;;

    filters: {
      field: metric_dim.metric_name
      value: "Opened Email"
    }
  }

  measure: conversion_count {
    label: "Conversions"
    description: "Placed Order"
    type: sum
    sql: ${TABLE}."VALUE" ;;

    filters: {
      field: metric_dim.metric_name
      value: "Placed Order"
    }
  }

  measure: bounced_email_count {
    label: "Bounced Emails"
    type: sum
    sql: ${TABLE}."VALUE" ;;

    filters: {
      field: metric_dim.metric_name
      value: "Bounced Email"
    }
  }

  measure: dropped_email_count {
    label: "Dropped Emails"
    type: sum
    sql: ${TABLE}."VALUE" ;;

    filters: {
      field: metric_dim.metric_name
      value: "Dropped Email"
    }
  }

  measure: unsubscribed_email_count {
    label: "Unsubscribed Emails"
    type: count

    filters: {
      field: metric_dim.metric_name
      value: "Unsubscribed"
    }
  }

  measure: spam_email_count {
    label: "Marked as Spam Emails"
    description: "Marked Email as Spam"
    type: sum
    sql: ${TABLE}."VALUE" ;;

    filters: {
      field: metric_dim.metric_name
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
