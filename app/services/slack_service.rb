# frozen_string_literal: true

class SlackService
  def self.call(incident_id)
    incident = Incident.find incident_id
    client = Slack::Web::Client.new
    response = client.conversations_create(name: incident.channel_name, is_private: false)
    incident.update(slack_response: response) if response.ok?
    response
  end
end
