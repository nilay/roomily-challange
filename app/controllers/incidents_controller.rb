class IncidentsController < ApplicationController
  def new; end

  def create
    @incident = Incident.new(incident_params)
    @incident.creator = current_user
    if @incident.save
      flash[:notice] = "Incident saved successfully"
    else
      flash[:notice] = "Failed: #{@incident.errors.full_messages.join(',')}"
    end
  end

  private

    def incident_params
      params.require(:incident).permit(
        :title,
        :description,
        :severity
      )
    end
end
