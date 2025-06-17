require 'rails_helper' 

RSpec.describe 'Plan', type: :request do
    describe 'get /plan' do
        it 'returns a 200 OK status' do
        get "/plan"
      
        expect(response).to have_http_status(:ok)
        end
      
        it 'list of plans' do
            get '/plan'
            expect(response.body).to include("Time Plan")
        end

    end
end

