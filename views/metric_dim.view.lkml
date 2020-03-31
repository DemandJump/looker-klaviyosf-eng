view: metric_dim {
  sql_table_name: KLAVIYO.METRIC_DIM ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    hidden: yes
    sql: ${TABLE}."ID" ;;
  }

  dimension: integration_category {
    type: string
    sql: ${TABLE}."INTEGRATION_CATEGORY" ;;
  }

  dimension: integration_name {
    type: string
    sql: ${TABLE}."INTEGRATION_NAME" ;;
  }

  dimension: metric_id {
    type: string
    sql: ${TABLE}."METRIC_ID" ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}."METRIC_NAME" ;;
  }

}
