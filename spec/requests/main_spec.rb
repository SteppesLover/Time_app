require 'rails_helper' 

RSpec.describe 'Main', type: :request do
    describe 'GET /' do
        it 'returns a 200 OK status' do
        get '/'
        expect(response).to have_http_status(:ok)
        end
      
    it 'displays the message link' do
        get '/'
        expect(response.body).to include("http://localhost:3000/message/")
    end

    it 'displays the message link' do
        get '/'
        expect(response.body).to include("http://localhost:3000/stat/")
    end

    it 'displays the message link' do
        get '/'
        expect(response.body).to include("http://localhost:3000/plan/")
    end

    it 'displays the message link' do
        get '/'
        expect(response.body).to include("http://localhost:3000/settings/")
    end

          it 'displays the message link' do
        get '/'
        expect(response.body).to include("http://localhost:3000/login_screen/")
    end
    end
end