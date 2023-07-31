# frozen_string_literal: true

module Api
  class SlackHookController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
      incident = Incident.find_by(slack_channel_id: params[:channel_id])

      return unless incident.present?
      return unless params[:text] == 'resolve' && params[:command] == 'rootly'

      incident.update(resolved_at: Time.now)
      head :no_content
    end
  end
end
