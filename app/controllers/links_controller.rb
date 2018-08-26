class LinksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @links = Link.all.order('created_at DESC')
  end

  def new
    @link = current_user.links.build
  end

  def create
    @link = current_user.links.create(link_params)
    if @link.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @link = Link.find(params[:id])
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    if @link.update(link_params)
      redirect_to @link
    else
      render :edit
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    redirect_to root_path
  end

  private
  def link_params
    params.require(:link).permit(:title, :url)
  end
end
