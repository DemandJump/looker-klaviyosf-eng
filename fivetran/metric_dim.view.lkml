view: metric_dim {
  sql_table_name: KLAVIYO.METRIC_DIM ;;

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

  dimension: integrationcategory {
    type: string
    sql: ${TABLE}."INTEGRATIONCATEGORY" ;;
  }

  dimension: integrationname {
    type: string
    sql: ${TABLE}."INTEGRATIONNAME" ;;
  }

  dimension: metricid {
    type: string
    sql: ${TABLE}."METRICID" ;;
  }

  dimension: metrickey {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}."METRICKEY" ;;
  }

  dimension: metricname {
    type: string
    sql: ${TABLE}."METRICNAME" ;;
  }

}
