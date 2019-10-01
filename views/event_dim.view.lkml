view: event_dim {
  sql_table_name: KLAVIYO.EVENT_DIM ;;

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

  dimension: eventid {
    type: string
    sql: ${TABLE}."EVENTID" ;;
  }

  dimension: eventkey {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}."EVENTKEY" ;;
  }

  dimension_group: eventtime {
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
    sql: ${TABLE}."EVENTTIME" ;;
  }

  dimension: eventtype {
    type: string
    sql: ${TABLE}."EVENTTYPE" ;;
  }

  dimension: flow {
    type: string
    sql: ${TABLE}."FLOW" ;;
  }

  dimension: propertybrowser {
    type: string
    sql: ${TABLE}."PROPERTYBROWSER" ;;
  }

  dimension: propertyclientname {
    type: string
    sql: ${TABLE}."PROPERTYCLIENTNAME" ;;
  }

  dimension: propertyclientos {
    type: string
    sql: ${TABLE}."PROPERTYCLIENTOS" ;;
  }

  dimension: propertyclientosfamily {
    type: string
    sql: ${TABLE}."PROPERTYCLIENTOSFAMILY" ;;
  }

  dimension: propertyclienttype {
    type: string
    sql: ${TABLE}."PROPERTYCLIENTTYPE" ;;
  }

  dimension: propertydiscountcodes {
    type: string
    sql: ${TABLE}."PROPERTYDISCOUNTCODES" ;;
  }

  dimension: propertyemaildomain {
    type: string
    sql: ${TABLE}."PROPERTYEMAILDOMAIN" ;;
  }

  dimension: propertymodel {
    type: string
    sql: ${TABLE}."PROPERTYMODEL" ;;
  }

  dimension: propertyname {
    type: string
    sql: ${TABLE}."PROPERTYNAME" ;;
  }

  dimension: propertyos {
    type: string
    sql: ${TABLE}."PROPERTYOS" ;;
  }

  dimension: propertypage {
    type: string
    sql: ${TABLE}."PROPERTYPAGE" ;;
  }

  dimension: propertyproductid {
    type: number
    value_format_name: id
    sql: ${TABLE}."PROPERTYPRODUCTID" ;;
  }

  dimension: propertysku {
    type: string
    sql: ${TABLE}."PROPERTYSKU" ;;
  }

  dimension: propertysubject {
    type: string
    sql: ${TABLE}."PROPERTYSUBJECT" ;;
  }

  dimension: propertytitle {
    type: string
    sql: ${TABLE}."PROPERTYTITLE" ;;
  }

  dimension: propertytype {
    type: string
    sql: ${TABLE}."PROPERTYTYPE" ;;
  }

}
