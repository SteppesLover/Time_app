require 'rails_helper'

RSpec.describe 'Settings Page', type: :request do
  describe 'GET /settings' do
    it 'returns HTTP 200 OK' do
      get '/settings'
      expect(response).to have_http_status(:ok)
    end

    it 'displays the settings form' do
      get '/settings'
      expect(response.body).to include('Username')
      expect(response.body).to include('Email Address')
      expect(response.body).to include('Theme')
      expect(response.body).to include('Enable Notifications')
      expect(response.body).to include('Save Settings')
    end
  end
end