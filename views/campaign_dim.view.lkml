view: campaign_dim {
  sql_table_name: KLAVIYO.CAMPAIGN_DIM ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    hidden: yes
    sql: ${TABLE}."ID" ;;
  }


  dimension: campaign_id {
    type: string
    sql: ${TABLE}."CAMPAIGN_ID" ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}."CAMPAIGN_NAME" ;;
  }

  dimension: campaign_type {
    type: string
    sql: ${TABLE}."CAMPAIGN_TYPE" ;;
  }

  dimension: is_segmented {
    type: yesno
    sql: ${TABLE}."IS_SEGMENTED" ;;
  }

  dimension: lists {
    type: string
    sql: ${TABLE}."LISTS" ;;
  }

  dimension: num_recipients {
    type: number
    sql: ${TABLE}."NUM_RECIPIENTS" ;;
  }

  dimension_group: send {
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
    sql: ${TABLE}."SEND_TIME" ;;
  }

  dimension_group: sent {
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
    sql: ${TABLE}."SENT_AT" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: template_id {
    type: string
    sql: ${TABLE}."TEMPLATE_ID" ;;
  }

}
