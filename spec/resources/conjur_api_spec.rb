require 'rails_helper'
require 'conjur_api'

  describe ConjurApi do

    describe '.get_health' do
      VCR.use_cassette('conjur_health') do
        response = ConjurApi.get_health

        it 'returns a health status object' do
            expect(response.to_h.size).to be  > 0
          end

        it 'returns an OpenStruct' do
          expect(response).to be_an_instance_of(OpenStruct)
        end

        it 'returns a "pg_stat_replication" array' do
          expect(response['database']['replication_status']["pg_stat_replication"]).
              to be_an_instance_of(Array)
        end
      end
    end

  end
