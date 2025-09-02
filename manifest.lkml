project_name: "explore-assistant-cf-mis"

application: explore_assistant_cf_mis {
  label: "Explore Assistant (CF - Make It Smarter Branch)"
  file: "explore_assistant.js"
  # url: "https://localhost:8080/explore_assistant.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore", "run_inline_query", "run_query", "create_query", "update_user_attribute", "create_user_attribute", "all_user_attributes", "me", "user_attribute_user_values", "search_roles", "login_user", "all_connections","test_connection","connections","connection","all_lookml_models","run_url_encoded_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*","https://bytecodeef.looker.com/*"]
    local_storage: yes
    external_api_urls: ["https://ea-demo-backend-63299712962.us-central1.run.app",
      "https://ea-demo-backend-63299712962.us-central1.run.app",
      "https://ea-demo-backend-63299712962.us-central1.run.app/*"]
    oauth2_urls: ["https://accounts.google.com/o/oauth2/v2/auth"]
  }
}


application: dashboard_summarization_with_cf_be {
  label: "Dashboard GenAI"
  file: "dashboard_summarization.js"
  # url: "https://localhost:8080/dashboard_summarization.js"
  mount_points: {
    dashboard_vis: no
    dashboard_tile: yes
    standalone: no
  }
  entitlements: {
    local_storage: yes
    navigation: no
    new_window: no
    new_window_external_urls: []
    use_form_submit: yes
    use_embeds: yes
    use_iframes: yes
    use_clipboard: no
    core_api_methods: ["run_inline_query", "all_lookml_models", "dashboard", "dashboard_dashboard_elements","me","update_user_attribute","create_user_attribute","all_user_attributes","user_attribute_user_values","set_user_attribute_user_value", "all_users"]
    external_api_urls: ["https://looker-explore-assistant-mcp-63299712962.us-central1.run.app/"]
    oauth2_urls: ["https://accounts.google.com/o/oauth2/v2/auth"]
  }
}
