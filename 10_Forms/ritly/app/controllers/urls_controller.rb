class UrlsController < ApplicationController
  def index
  end

  def show
    @url = Url.find params[:id]
    @full_path = "#{request.protocol}#{request.host_with_port}/#{@url.hash_code}"
  end

  def new
  	@url = Url.new
  end

  def create
    safe_url_params = params.require(:url).permit(:link)
    @url = Url.new
    @url.link = params[:link]
    @url.hash_code = rand(1.1000000)
    @url.save
    redirect_to @url
  end



  def update
  end

  # private
  # def safe_movie_params
  # 	params.require('movie').permit(:title,:description)
  # end

  # def load_movie
  # 	@movies = Movie.find_by id: params[:id]
  # end

end
