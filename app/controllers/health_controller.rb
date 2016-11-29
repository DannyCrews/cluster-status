class HealthController < ApplicationController

  def index
    @health = Conjur.get_health
  end

  def health_status
    @health = Conjur.get_health

    respond_to do |format|
      format.js
    end
  end

end
