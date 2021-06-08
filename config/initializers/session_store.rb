if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_wonderTracker', domain: 'localhost:3001', secure:true
else
  Rails.application.config.session_store :cookie_store, key: '_wonderTracker'
end
