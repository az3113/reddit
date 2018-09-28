# ApplicationAPI
class Api::LinksController < ApplicationController
  def index
    @user = User.all.includes(links: :comments)
    render json: @user, include: [:links]
  end
end
