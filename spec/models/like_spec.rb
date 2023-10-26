require 'rails_helper'

RSpec.describe Like, type: :model do
  newuser = User.create(name: 'TestBot', photo: 'test photo', bio: 'Tester', posts_counter: 0)
  newpost = Post.create(author: newuser, title: 'test', text: 'testing', comments_counter: 0, likes_counter: 0)
  subject { Like.new(user: newuser, post: newpost) }
  before { subject.save }

  it 'likes_counter should be incremented' do
    expect(newpost.likes_counter).to eql(1)
  end
end
