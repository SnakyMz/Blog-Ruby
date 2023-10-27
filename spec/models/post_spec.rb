require 'rails_helper'

RSpec.describe Post, type: :model do
  newuser = User.create(name: 'TestBot', photo: 'test photo', bio: 'Tester', posts_counter: 0)
  subject { Post.new(author: newuser, title: 'test', text: 'testing', comments_counter: 0, likes_counter: 0) }
  before { subject.save }

  it 'name should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'comments should be >= 0' do
    subject.comments_counter = -1
    expect(subject).to_not be_valid
  end

  it 'likes_counter should be >= 0' do
    subject.likes_counter = -1
    expect(subject).to_not be_valid
  end

  it 'returns recent_comments' do
    Comment.create(user: newuser, post: subject, text: 'Testing comment')
    Comment.create(user: newuser, post: subject, text: 'Comment test')
    comments = subject.recent_comments
    expect(comments.length).to eql(2)
  end
end
