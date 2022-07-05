class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies
  end

  def any_movie
    any_movie = Movie.find_by(id: params[:id])
    render json: any_movie
  end
end
