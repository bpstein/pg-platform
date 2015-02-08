url = "redis://127.0.0.1:6379/1"

Sidekiq.configure_server do |config|
  config.redis = { url: url, namespace: 'sidekiq' }
end

