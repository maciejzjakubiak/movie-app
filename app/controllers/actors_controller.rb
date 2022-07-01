class ActorsController < ApplicationController
  def single_actor
    single_actor = Actor.find_by(id: params[:id])
    render json: single_actor
  end
end
