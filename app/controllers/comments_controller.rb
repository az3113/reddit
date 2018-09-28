# CommentsController
class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_link
  before_action :find_comment, only: [:destroy]
  def create
    @comment = @link.comments.new(comment_params)
    @comment.user = current_user
    return redirect_to @link if @comment.save
  end

  def destroy
    @comment.destroy
    redirect_to @link
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :link_id, :user_id)
  end

  def set_link
    @link = Link.find(params[:link_id])
  end

  def find_comment
    @comment = @link.comments.find(params[:id])
  end
end
