view: bronze_queries {
  sql_table_name: `explore-assistant-cf-mis.explore_assistant.bronze_queries` ;;

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: explore_key {
    type: string
    sql: ${TABLE}.explore_key ;;
  }
  dimension: explore_name {
    type: string
    sql: ${TABLE}.explore_name ;;
  }
  dimension: input_question {
    type: string
    sql: ${TABLE}.input_question ;;
  }
  dimension: explore_params {
    type: string
    sql: ${TABLE}.explore_params  ;;
  }
  dimension: model_name {
    type: string
    sql: ${TABLE}.model_name ;;
  }
  dimension: original_query_url {
    type: string
    sql: ${TABLE}.original_query_url ;;
  }
  dimension: output_description {
    type: string
    sql: ${TABLE}.output_description ;;
  }
  dimension: query_run_count {
    type: number
    sql: ${TABLE}.query_run_count ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }
  measure: count {
    type: count
    drill_fields: [model_name, explore_name]
  }
}
