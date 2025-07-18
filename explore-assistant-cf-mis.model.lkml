connection: "explore-assistant-cf-mis"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/dashboards/*"

explore: golden_queries {
  join: explore_assistant_refinement_examples {
    type: left_outer
    relationship: one_to_one
    sql_on: ${explore_id} = ${explore_assistant_refinement_examples.explore_id} ;;
  }
  join: explore_assistant_samples {
    type: left_outer
    relationship: one_to_one
    sql_on: false;;
    # ${explore_id} = ${explore_assistant_samples.explore_id} ;;
  }
}

explore: silver_queries {}
explore: bronze_queries {}
explore: query_keys {}
# explore: explore_assistant_samples {
#   # required_access_grants: [explore_assistant_tester]
# }

# explore: explore_assistant_examples {
#   # required_access_grants: [explore_assistant_tester]
# }

# explore: explore_assistant_refinement_examples {
#   # required_access_grants: [explore_assistant_tester]
# }
