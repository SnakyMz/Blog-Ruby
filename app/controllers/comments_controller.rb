class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.post = @post
    @comment.user = current_user
    if @comment.save
      flash[:success] = 'You have created a new comment!'
      redirect_to user_post_path(@post.author, @post)
    else
      flash.now[:error] = 'Encountered an error while creating a new comment.'
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @user = @comment.user
    @post = @comment.post
    if @comment.destroy
      flash[:success] = 'Comment deleted'
      redirect_to user_post_path(@user, @post)
    else
      flash[:error] = 'Something went wrong!'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
