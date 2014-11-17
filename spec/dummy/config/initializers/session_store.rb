# Be sure to restart your server when you modify this file.

# This will store all session information within the dummy app under the example.com domain,
# meaning that our subdomain sessions will be the same as the root domain sessions.
Rails.application.config.session_store :cookie_store,
  key: '_dummy_session',
  domain: "example.com"
