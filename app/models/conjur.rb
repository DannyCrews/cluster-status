class Conjur < ApplicationRecord
  include HTTParty
  base_uri 'https://conjur-master.itp.conjur.net'
  default_timeout 1 #hard timeout after 1 second

  def self.handle_timeouts
      begin
        yield
      rescue Net::OpenTimeout, Net::ReadTimeout
        {}
      end
    end

  def self.get_health
    handle_timeouts do
      get("/health")
    end
  end


end
