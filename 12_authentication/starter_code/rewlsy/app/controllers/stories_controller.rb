class StoriesController < ApplicationController
  def index
    @stories = Story.search(params[:q])
  end
end
