require 'rails_helper'

RSpec.describe Comment, type: :model do
  newuser = User.create(name: 'TestBot', photo: 'test photo', bio: 'Tester', posts_counter: 0)
  newpost = Post.create(author: newuser, title: 'test', text: 'testing', comments_counter: 0, likes_counter: 0)
  subject { Comment.new(user: newuser, post: newpost, text: 'Testing comment') }
  before { subject.save }

  it 'comments_counter should be incremented' do
    expect(newpost.comments_counter).to eql(1)
  end
end
