
view: insight_dim {
  sql_table_name: KLAVIYO.INSIGHT_DIM ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    hidden: yes
    sql: ${TABLE}."ID" ;;
  }


  dimension: insight_name {
    type: string
    sql: ${TABLE}."INSIGHT_NAME" ;;
  }

  dimension: total_insight_value {
    type: number
    sql: ${TABLE}."TOTAL_INSIGHT_VALUE" ;;
  }

}
