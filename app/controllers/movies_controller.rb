class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies
  end

  def show
    movie = Movie.find_by(id: params[:id])
    render json: show
  end

  def create
    movie = Movie.new(
      id: params["id"],
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
    )
    movie.save
    render json: movie
  end

  def update
    movie = Movie.find_by(id: params[:id])

    movie.title = params["title"] || movie.title
    movie.year = params["year"] || movie.year
    movie.plot = params["plot"] || movie.plot
    movie.save
    render json: movie
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.destroy
    render json: { message: "Gone baby!" }
  end
end
