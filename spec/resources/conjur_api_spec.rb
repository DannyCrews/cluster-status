require 'rails_helper'
require 'conjur_api'

  describe ConjurApi do

    describe '.get_health' do
      it 'returns a health status object' do
        VCR.use_cassette('conjur_health') do
          response = ConjurApi.get_health

          expect(response).to be_an_instance_of(Hash)
          expect(response['database']['replication_status']["pg_stat_replication"]).
              to be_an_instance_of(Array)
          response.size.should be  > 0
        end
      end

    end

  end
