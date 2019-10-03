view: campaign_dim {
  sql_table_name: KLAVIYO.CAMPAIGN_DIM ;;

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

  dimension: campaignid {
    type: string
    sql: ${TABLE}."CAMPAIGNID" ;;
  }

  dimension: campaignkey {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}."CAMPAIGNKEY" ;;
  }

  dimension: campaignname {
    label: "Campaign Name"
    type: string
    sql: ${TABLE}."CAMPAIGNNAME" ;;
  }

  dimension: campaigntype {
    label: "Campaign Type"
    type: string
    sql: ${TABLE}."CAMPAIGNTYPE" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."CREATED" ;;
  }

  dimension: fromemail {
    label: "From Email"
    type: string
    sql: ${TABLE}."FROMEMAIL" ;;
  }

  dimension: issegmented {
    label: "Is Segmented"
    type: yesno
    sql: ${TABLE}."ISSEGMENTED" ;;
  }

  dimension_group: sendtime {
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
    sql: ${TABLE}."SENDTIME" ;;
  }

  dimension_group: sentat {
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
    sql: ${TABLE}."SENTAT" ;;
  }

  dimension: statuslabel {
    label: "Status Label"
    type: string
    sql: ${TABLE}."STATUSLABEL" ;;
  }

  dimension: subject {
    label: "Campaign Subject"
    type: string
    sql: ${TABLE}."SUBJECT" ;;
  }

}
