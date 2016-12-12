require 'rails_helper'

RSpec.feature 'External request' do
  it 'queries health at conjur-master.itp.conjur.net' do
    uri = URI('https://conjur-master.itp.conjur.net/health')

    response = Net::HTTP.get(uri)

    expect(response).to be_an_instance_of(String)
  end
end
