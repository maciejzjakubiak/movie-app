Rails.application.routes.draw do
  ####
  get "/actors" => "actors#index"

  # GET "/actors/3" - Just get one specific book (that already exists)
  get "/actors/:id" => "actors#show"

  # POST "/actors" - Creates a new book, add it to our database
  post "/actors" => "actors#create"

  # PATCH "/actors/3" - Updates a specific book
  patch "/actors/:id" => "actors#update"

  # DELETE "/actors/3" - Deletes a specific book
  delete "/actors/:id" => "actors#destroy"
  ####
  get "/movies" => "movies#index"

  # GET "/movies/3" - Just get one specific book (that already exists)
  get "/movies/:id" => "movies#show"

  # POST "/movies" - Creates a new book, add it to our database
  post "/movies" => "movies#create"

  # PATCH "/movies/3" - Updates a specific book
  patch "/movies/:id" => "movies#update"

  # DELETE "/movies/3" - Deletes a specific book
  delete "/movies/:id" => "movies#destroy"
end
