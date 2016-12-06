require 'conjur_api'

class HealthController < ApplicationController

  def index
    @health = ConjurApi.get_health
  end

  def health_status
    @health = ConjurApi.get_health

    respond_to do |format|
      format.js
    end
  end

end
