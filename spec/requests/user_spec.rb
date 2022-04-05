require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    get users_path
  end

  describe 'POST /user' do
    post user_path, body = {
      first_name: 'Denis',
      last_name: 'Lafontant',
      email: 'denislafontant@gmail.com',
      password_digest: 'pass123456'
    }
  end
end
