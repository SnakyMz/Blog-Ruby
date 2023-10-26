require 'rails_helper'

RSpec.describe Like, type: :model do
  user = User.create(name: 'TestBot', photo: 'test photo', bio: 'Tester', posts_counter: 0)
  post = Post.create(author: user, title: 'test', text: 'testing', comments_counter: 0, likes_counter: 0)
  subject { Like.new(user: user, post: post) }
  before { subject.save }

  it 'likes_counter should be incremented' do
    expect(post.likes_counter).to eql(1)
  end
end
