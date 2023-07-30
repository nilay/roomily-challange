class SiteController < ApplicationController
  def index
    @incident = Incident.new
    @incidents = Incident.all.order(created_at: :desc)
  end
end
