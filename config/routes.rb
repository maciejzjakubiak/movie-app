Rails.application.routes.draw do
  get "/single_actor/:id", controller: "actors", action: "single_actor"
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#any_movie"
end
