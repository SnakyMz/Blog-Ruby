# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

first_post1 = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
first_post2 = Post.create(author: first_user, title: 'Bye', text: 'Best of luck with rails')
second_post1 = Post.create(author: second_user, title: 'Hello', text: 'My first post')
second_post2 = Post.create(author: second_user, title: 'Hello', text: 'Happy coding')

Comment.create(post: first_post1, author: second_user, text: 'Hi Tom!' )
Comment.create(post: first_post1, author: first_user, text: 'Hi Lilly!' )
Comment.create(post: first_post1, author: second_user, text: 'How are you Tom?' )
Comment.create(post: first_post1, author: first_user, text: 'I am doing good.' )
Comment.create(post: first_post1, author: first_user, text: 'What about you?' )
Comment.create(post: first_post1, author: second_user, text: 'I am doing well too.' )
