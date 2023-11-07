require 'rails_helper'

RSpec.describe "Users", type: :system do
  before do
    driven_by(:rack_test)
    @user = User.create(name: 'Albert', photo: 'test photo', bio: 'Tester', posts_counter: 4)
    visit root_path
  end

  it 'Should render user name' do
    expect(page).to have_content('Albert')
  end

  it 'Should render user photo' do
    expect(page.html).to include('userPhoto')
  end

  it 'Should render number of posts' do
    expect(page).to have_content('Number of posts: 4')
  end

  it 'Should click the link with the name of the user' do
    click_on('Albert')
    expect(page).to have_current_path(user_path(id: @user.id))
  end
end
