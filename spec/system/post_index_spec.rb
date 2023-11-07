require 'rails_helper'

RSpec.describe 'PostIndices', type: :system do
  before do
    driven_by(:rack_test)
    @user = User.create(name: 'Alpha', photo: 'test photo', bio: 'Runner', posts_counter: 0)
    @post = Post.create(author: @user, title: 'Running', text: 'Run Run Run Along', comments_counter: 0,
                        likes_counter: 0)
    @comment = Comment.create(post: @post, user: @user, text: 'Hi!')
    @like = Like.create(post: @post, user: @user)
    visit user_posts_path(user_id: @user.id)
  end

  it 'Should render user name' do
    expect(page.html).to include('userPhoto')
  end

  it 'Should render user photo' do
    expect(page).to have_content('Alpha')
  end

  it 'Should render number of posts' do
    expect(page).to have_content('Number of posts: 1')
  end

  it 'Should render post title' do
    expect(page).to have_content('Running')
  end

  it 'Should render post text' do
    expect(page).to have_content('Run Run Run Along')
  end

  it 'Should render post comments' do
    expect(page.html).to have_selector('.postComments', count: 1)
  end

  it 'Should render post number of comments' do
    expect(page).to have_content('Comments: 1')
  end

  it 'Should render post number of likes' do
    expect(page).to have_content('Likes: 1')
  end

  it 'Should render pagination' do
    expect(page).to have_content('Pagination')
  end

  it 'redirects to the post page' do
    click_link('Running')
    expect(page).to have_current_path(user_post_path(user_id: @user.id, id: @post.id))
  end
end
