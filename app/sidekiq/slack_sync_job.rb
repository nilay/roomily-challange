# frozen_string_literal: true

class SlackSyncJob
  include Sidekiq::Job

  def perform(incident_id)
    SlackService.call(incident_id)
  end
end
