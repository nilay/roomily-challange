module IncidentsHelper
  def new_incident_form
    render NewIncidentFormComponent.new
  end

  def incidents(incidents)
    render IncidentDetailsComponent.with_collection(incidents)
  end

  def incident_details(incident)
    render IncidentDetailsComponent.new(incident: incident)
  end
end