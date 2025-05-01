require 'rails_helper'

RSpec.describe User, type: :model do
  it 'returns the full_name for a user' do 
    user = User.create(name: 'Chipper Roe')

    expect(user.name).to eq 'Chipper Roe'
  end
end
