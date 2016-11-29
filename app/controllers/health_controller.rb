class HealthController < ApplicationController
  def index
    @health = Conjur.get_health
  end
end
