project_name: "explore-assistant-cf-mis"

application: explore_assistant_cf_mis {
  label: "Explore Assistant (CF - Make It Smarter Branch)"
  file: "explore_assistant.js"
  # url: "http://localhost:8080/bundle.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore", "run_inline_query", "run_query", "create_query", "update_user_attribute", "create_user_attribute", "all_user_attributes", "me", "user_attribute_user_values", "search_roles", "login_user", "all_connections","test_connection","connections","connection","all_lookml_models","run_url_encoded_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
    external_api_urls: ["https://looker-explore-assistant-mcp-dnhcuixsgq-uc.a.run.app"]
    oauth2_urls: ["https://accounts.google.com/o/oauth2/v2/auth"]
  }
}
