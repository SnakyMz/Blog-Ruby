require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'TestBot', photo: 'test photo', bio: 'Tester', posts_counter: 0) }
  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'posts_counter should be >= 0' do
    subject.posts_counter = -1
    expect(subject).to_not be_valid
  end

  it 'returns recent_posts' do
    Post.create(author: subject, title: 'test', text: 'test', comments_counter: 0, likes_counter: 0)
    Post.create(author: subject, title: 'testing', text: 'testing', comments_counter: 0, likes_counter: 0)
    posts = subject.recent_posts
    expect(posts.length).to eq 2
  end
end
