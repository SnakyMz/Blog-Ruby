require 'rails_helper'

RSpec.describe PostsController, type: :request do
  describe 'GET index' do
    before :each do
      get '/users/index/posts'
    end

    it 'returns code 200' do
      expect(response.status).to eq(200)
    end

    it 'renders index' do
      expect(response).to render_template('posts/index')
    end

    it 'response body has the right placeholder' do
      expect(response.body).to include('List of all posts')
    end
  end

  describe 'GET show' do
    before :each do
      get '/users/index/posts/index'
    end

    it 'returns code 200' do
      expect(response.status).to eq(200)
    end

    it 'renders show' do
      expect(response).to render_template('posts/show')
    end

    it 'response body has the right placeholder' do
      expect(response.body).to include('Post details')
    end
  end
end
