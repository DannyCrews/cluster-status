require 'rails_helper'

feature 'External request' do
  it 'queries conjur-master health status' do
    uri = URI('https://conjur-master.itp.conjur.net/health')

    response = Net::HTTP.get(uri)

    expect(response).to be_an_instance_of(String)
  end
end
