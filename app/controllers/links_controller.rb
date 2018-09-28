# LinksController
class LinksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_link, except: [:index, :new, :create]
  def index
    @links = Link.all.order('created_at DESC')
  end

  def new
    @link = current_user.links.new
  end

  def create
    @link = current_user.links.create(link_params)
    if @link.save
      redirect_to @link
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @link.update(link_params)
      redirect_to @link
    else
      render :edit
    end
  end

  def destroy
    @link.destroy
    redirect_to root_path
  end

  def upvote
    @link.upvote_by current_user
    redirect_to @link
  end

  def downvote
    @link.downvote_by current_user
    redirect_to @link
  end

  private

  def link_params
    params.require(:link).permit(:title, :url, :content)
  end

  def find_link
    @link = Link.find(params[:id])
  end
end
