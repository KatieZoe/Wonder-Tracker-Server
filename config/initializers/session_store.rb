if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_wonderTracker', domain: 'focused-bassi-701d44.netlify.app', secure:true
else
  Rails.application.config.session_store :cookie_store, key: '_wonderTracker'
end
