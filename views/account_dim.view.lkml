view: account_dim {
  sql_table_name: KLAVIYO.ACCOUNT_DIM ;;
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
    label: "PID"
    type: number
    value_format_name: id
    sql: ${TABLE}."_PID" ;;
  }

  dimension_group: _prev_sync {
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
    sql: ${TABLE}."_PREV_SYNC" ;;
  }

  dimension: _row_version {
    type: number
    hidden: yes
    sql: ${TABLE}."_ROW_VERSION" ;;
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
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

}
