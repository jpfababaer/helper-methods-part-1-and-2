Rails.application.routes.draw do

  #1
  get("/" => "movies#create")

  # Routes for the Movie resource:

  # CREATE
  post("/movies", controller: "movies", action: "create")
  get("/movies/new", controller: "movies", action: "new")

  # READ
  get("/movies" => "movies#index")
  get("/movies/:id" => "movies#show")

  # UPDATE
  patch("/movies/:id" => "movies#update")
  get("/movies/:id/edit" => "movies#edit")

  # DELETE
  delete("/movies/:id" => "movies#destroy")

  #------------------------------
end
