require 'rails_helper'

RSpec.describe UsersController, type: :request do
  describe 'GET index' do
    before :each do
      get '/users'
    end

    it 'returns code 200' do
      expect(response.status).to eq(200)
    end

    it 'renders index' do
      expect(response).to render_template('users/index')
    end

    it 'response body has the right placeholder' do
      expect(response.body).to include('List of all users')
    end
  end

  describe 'GET show' do
    before :each do
      get '/users/index'
    end

    it 'returns code 200' do
      expect(response.status).to eq(200)
    end

    it 'renders the show template' do
      expect(response).to render_template('users/show')
    end

    it 'response body has the right placeholder' do
      expect(response.body).to include('User details')
    end
  end
end
