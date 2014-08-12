 class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @movies = Movie.search_for(params[:q])
  end

  def show
  	load_movie
  end

  def new
    @movies = Movie.new
  end

  def create
  	@movies = Movie.new(safe_movie_params)
  	if @movies.save
      redirect_to shirt_path(@movies)
    else
      render 'new'
    end

  end


  def edit
  	load_movie
  end

  def destroy
  	load_movie
  	@movies.destroy
  	redirect_to '/movies'

  end

  def update
  	load_movie
  	@movies.update safe_movie_params
  	redirect_to movies_url
  end

  private
  def safe_movie_params
  	params.require('movie').permit(:title,:description)
  end

  def load_movie
  	@movies = Movie.find_by id: params[:id]
  end


end
