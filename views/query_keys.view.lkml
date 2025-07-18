view: query_keys {
  derived_table: {
    sql:
    select distinct explore_id as explore_key from (
      select explore_id from golden_queries
      union all
      select explore_key from silver_queries
      union all
      select explore_key from bronze_queries
    );;
  }
  dimension: explore_key {
    primary_key: yes
    type: string
    sql: ${TABLE}.explore_key ;;
  }
}
