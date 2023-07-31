# frozen_string_literal: true

Redis.current = Redis.new(url: Rails.application.credentials[:redis][:endpoint])
