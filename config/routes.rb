Rails.application.routes.draw do
  get "directors/youngest", controller: "most", action: "youngest"
  get "directors/eldest", controller: "most", action: "eldest"
  get "/directors", controller: "pages", action: "directors"
  get "/movies", controller: "pages", action: "movies"
  get "/actors", controller: "pages", action: "actors"
  get "/", controller: "misc", action: "homepage"
  get "/actors/:actor_id", controller: "pages", action: "selected_actor"
  get "/directors/:director_id", controller: "pages", action: "selected_director"
  get "/movies/:movie_id", controller: "pages", action: "selected_movie"
end
