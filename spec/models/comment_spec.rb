require 'rails_helper'

RSpec.describe Comment, type: :model do
  user = User.create(name: 'TestBot', photo: 'test photo', bio: 'Tester', posts_counter: 0)
  post = Post.create(author: user, title: 'test', text: 'testing', comments_counter: 0, likes_counter: 0)
  subject { Comment.new(user: user, post: post, text: 'Testing comment') }
  before { subject.save }

  it 'comments_counter should be incremented' do
    expect(post.comments_counter).to eql(1)
  end
end
