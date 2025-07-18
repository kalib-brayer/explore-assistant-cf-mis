view: silver_queries {
  sql_table_name: `explore-assistant-cf-mis.explore_assistant.silver_queries` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: approved {
    type: yesno
    sql: ${TABLE}.approved ;;
  }
  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_date {
    type: string
    sql: ${TABLE}.created_date ;;
  }
  dimension: explore_key {
    type: string
    sql: ${TABLE}.explore_key ;;
  }
  dimension: explore_params {
    type: string
    sql: ${TABLE}.explore_params ;;
  }
  dimension: feedback_type {
    type: string
    sql: ${TABLE}.feedback_type ;;
  }
  dimension: prompt {
    type: string
    sql: ${TABLE}.prompt ;;
  }
  dimension: suggested_new_prompt {
    type: string
    sql: ${TABLE}.suggested_new_prompt ;;
  }
  dimension: timestamp {
    type: number
    sql: ${TABLE}.timestamp ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
