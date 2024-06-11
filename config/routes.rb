Rails.application.routes.draw do
  get "directors/youngest", controller: "most", action: "youngest"
  get "directors/oldest", controller: "most", action: "oldest"
  get "/directors", controller: "pages", action: "directors"
  get "/movies", controller: "pages", action: "movies"
  get "/actors", controller: "pages", action: "actors"
  get("/", { controller: "misc", action: "homepage" })
end
