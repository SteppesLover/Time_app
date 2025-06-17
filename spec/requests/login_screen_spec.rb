require 'rails_helper' 

RSpec.describe 'Login_screen', type: :request do
    describe 'get /login_screen' do
        it 'returns a 200 OK status' do
        get "/login_screen"
        expect(response).to have_http_status(:ok)
        end


        it 'sing in button works' do
            get "/login_screen"
            expect(response.body).to include('Sign In') 
        end
      
#        it 'fill login - no password' do
#        end
      
#        it 'fill password - no login' do
#        end
      
#        it 'fill password and login' do
 #       end
    end
end