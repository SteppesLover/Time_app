require 'rails_helper' 

RSpec.describe 'Messange', type: :request do
    describe 'get /message' do
        it 'returns a 200 OK status' do
        get "/message"
      
        expect(response).to have_http_status(:ok)
        end
        
        it 'list of plans' do
            get '/message'
            expect(response.body).to include("2025")
        end

    end
end

