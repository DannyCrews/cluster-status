require 'httparty'

class ConjurApi
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

  # def cache_key
  #   "conjurmaster"
  # end

  # def handle_caching(options)
  #   if cached = REDIS.get(cache_key)
  #     JSON[cached]
  #   else
  #     yield.tap do |results|
  #       REDIS.setex(cache_key, 10000, results.to_json)
  #     end
  #   end
  # end

  def self.get_health
    handle_timeouts do
      get("/health")
    end
  end

end
