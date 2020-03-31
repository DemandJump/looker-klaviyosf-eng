view: person_dim {
  sql_table_name: KLAVIYO.PERSON_DIM ;;

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

  dimension: acceptsmarketing {
    type: yesno
    sql: ${TABLE}."ACCEPTSMARKETING" ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}."ADDRESS1" ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}."ADDRESS2" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}."FIRSTNAME" ;;
  }

  dimension: fullname {
    type: string
    sql: ${TABLE}."FULLNAME" ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}."LASTNAME" ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }

  dimension: objecttype {
    type: string
    sql: ${TABLE}."OBJECTTYPE" ;;
  }

  dimension: organization {
    type: string
    sql: ${TABLE}."ORGANIZATION" ;;
  }

  dimension: personid {
    type: string
    sql: ${TABLE}."PERSONID" ;;
  }

  dimension: personkey {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}."PERSONKEY" ;;
  }

  dimension: phonenumber {
    type: string
    sql: ${TABLE}."PHONENUMBER" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}."TIMEZONE" ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}."ZIPCODE" ;;
  }

}
