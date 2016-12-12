class ConjurApi
  require 'net/http'
  require 'json'
  require 'ostruct'

  @source = 'https://conjur-master.itp.conjur.net/health'


  def self.get_health
      data = Net::HTTP.get_response(URI.parse(@source)).body
      JSON.parse(data, object_class: OpenStruct)
  end

end
