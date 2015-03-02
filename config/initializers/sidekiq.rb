url = "redis://redistogo:d3b29cd4b3aa5d8248ef3c784aaf6f6f@ray.redistogo.com:9823/"

Sidekiq.configure_server do |config|
  config.redis = { url: url, namespace: 'sidekiq' }
end

