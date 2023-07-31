Sidekiq.configure_server do |config|
  config.redis = { url: Rails.application.credentials[:redis][:endpoint] }
end

Sidekiq.configure_client do |config|
  config.redis = { url: Rails.application.credentials[:redis][:endpoint] }
end