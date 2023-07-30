# frozen_string_literal: true

class IncidentDetailsComponent < ViewComponent::Base
  with_collection_parameter :incident

  def initialize(incident:)
    @incident = incident
  end
end