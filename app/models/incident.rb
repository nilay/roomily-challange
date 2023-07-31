# frozen_string_literal: true

class Incident < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  after_create_commit :slack_sync

  enum :severity, {
    sev0: 0,
    sev1: 1,
    sev2: 2
  }, scope: true, default: 1, prefix: true

  def channel_name
    "#{title.gsub(/[^0-9a-z ]/i, '_')[0..40]}_#{id}"
  end
  private

  def slack_sync
    SlackSyncJob.perform_async(self.id)
  end
end
