require 'rails_helper' 

RSpec.describe 'Stat', type: :request do
    describe 'get /stat' do
        it 'returns a 200 OK status' do
        get "/stat"
      
        expect(response).to have_http_status(:ok)
        end
      
        it 'list of plans' do
            get '/stat'
            expect(response.body).to include("infographic")
        end
    end
end