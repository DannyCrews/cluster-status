class Conjur < ApplicationRecord
  include HTTParty
  base_uri 'https://conjur-master.itp.conjur.net'

  def self.get_health
    get("/health")
  end


end
