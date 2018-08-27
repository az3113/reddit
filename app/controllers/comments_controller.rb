class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @link = Link.find(params[:link_id])
    @comment = @link.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @link
    end
  end

  def destroy
    @link = Link.find(params[:link_id])
    @comment = @link.comments.find(params[:id])
    @comment.destroy
    redirect_to @link
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :link_id, :user_id)
  end
end

