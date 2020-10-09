# if Rails.env == "production"
#     Rails.application.config.session_store :cookie_store, key: "_brewmaps_backend", domain: "dbp-brewmaps-app-api.herokuapp.com"
# else
    Rails.application.config.session_store :cookie_store, key: "_brewmaps_backend"
# end