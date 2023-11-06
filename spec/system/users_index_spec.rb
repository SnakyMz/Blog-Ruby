require 'rails_helper'

RSpec.describe "Users", type: :system do
  before do
    driven_by(:rack_test)
  end

  before(:all) do
    @user = User.create(name: 'TestBot', photo: 'test photo', bio: 'Tester', posts_counter: 4)
  end

  it 'Should render user name' do
    visit root_path
    expect(page).to have_content('TestBot')
  end

  it 'Should render user photo' do
    visit root_path
    expect(page.html).to include('userPhoto')
  end

  it 'Should render number of posts' do
    visit root_path
    expect(page).to have_content('Number of posts: 4')
  end
end
