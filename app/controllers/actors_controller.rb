class ActorsController < ApplicationController
  def index
    actors = Actor.all
    render json: actors
  end

  def show
    actor = Actor.find_by(id: params[:id])
    render json: actor
  end

  def create
    actor = Actor.new(
      id: params["id"],
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      gender: params["gender"],
      age: params["age"],
      movie_id: params["movie_id"],
    )
    actor.save
    render json: actor
  end

  def update
    actor = Actor.find_by(id: params[:id])
    actor.first_name = params["first_name"] || actor.first_name
    actor.last_name = params["last_name"] || actor.last_name
    actor.known_for = params["known_for"] || actor.known_for
    actor.gender = params["gender"] || actor.gender
    actor.age = params["age"] || actor.age
    actor.movie_id = params["movie_id"] || actor.movie_id
    actor.save
    render json: actor
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.destroy
    render json: { message: " Gone baby!" }
  end
end
