class CommentsController < ApplicationController
  
  before_filter :login_required
    
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!({:author => current_user.username, :body => params[:comment][:body]})
    respond_to do |format|
      format.html { redirect_to @post }
      format.js
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to Post.find_by_id(@comment.post_id)
  end
end
