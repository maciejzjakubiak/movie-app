Rails.application.routes.draw do
  get "/single_actor/:id", controller: "actors", action: "single_actor"
end
