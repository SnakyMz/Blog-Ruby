class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @user = User.find(params[:user_id])
    @post = Post.create(post_params)
    @post.author = @user
    @post.comments_counter = 0
    @post.likes_counter = 0
    if @post.save
      flash[:success] = 'You have created a new post!'
      redirect_to user_posts_path(@post.author)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :comments_counter, :likes_counter)
  end
end
