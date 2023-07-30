# frozen_string_literal: true

class NewIncidentFormComponent < ViewComponent::Base
  def initialize(incident_class: Incident)
    @incident = incident_class.new
  end
end
