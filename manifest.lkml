project_name: "explore-assistant-cf-mis"

application: explore_assistant_test_cf {
  label: "Explore Assistant (Cloud Function - Make It Smarter Branch)"
  file: "bundle.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
    external_api_urls: ["https://us-central1-explore-assistant-test.cloudfunctions.net/explore-assistant-api"]
  }
}