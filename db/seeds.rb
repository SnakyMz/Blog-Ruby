# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
first_user = User.create(name: 'Tom', photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', bio: 'Teacher from Mexico.', posts_counter: 0)
second_user = User.create(name: 'Lilly', photo: 'https://images.unsplash.com/photo-1508922088233-a07c9cc6972f?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', bio: 'Teacher from Poland.', posts_counter: 0)

first_post1 = Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
first_post2 = Post.create(author: first_user, title: 'Bye', text: 'Best of luck with rails', comments_counter: 0, likes_counter: 0)
second_post1 = Post.create(author: second_user, title: 'Hello', text: 'My first post', comments_counter: 0, likes_counter: 0)
second_post2 = Post.create(author: second_user, title: 'Hello', text: 'Happy coding', comments_counter: 0, likes_counter: 0)

Comment.create(post: first_post1, user: second_user, text: 'Hi Tom!' )
Comment.create(post: first_post1, user: first_user, text: 'Hi Lilly!' )
Comment.create(post: first_post1, user: second_user, text: 'How are you Tom?' )
Comment.create(post: first_post1, user: first_user, text: 'I am doing good.' )
Comment.create(post: first_post1, user: first_user, text: 'What about you?' )
Comment.create(post: first_post1, user: second_user, text: 'I am doing well too.' )
