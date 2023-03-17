require 'rails_helper'

RSpec.describe '/users', type: :request do
  before :each do
    @user = User.create(name: 'Promise')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      get users_url
      expect(response).to have_http_status(:found)
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      get "/users/#{@user.id}"
      expect(response).to have_http_status(:found)
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_user_url
      expect(response).to have_http_status(:found)
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      get "/users/#{@user.id}/edit"
      expect(response).to have_http_status(:found)
    end
  end
end
