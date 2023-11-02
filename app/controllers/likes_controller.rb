class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = Like.new
    @like.post = @post
    @like.user = current_user

    if @like.save
      flash[:notice] = 'the like has been added successfully!'
      redirect_to user_post_path(@post.author, @post)
    else
      flash.now[:error] = 'An error has occurred'
    end
  end
end
