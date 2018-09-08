class PagesController < ApplicationController
  def index
    @links = Link.all.order('created_at DESC')
  end
end
