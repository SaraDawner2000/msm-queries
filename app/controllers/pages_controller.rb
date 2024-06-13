class PagesController < ApplicationController
  def directors
    @directors_record = Director.all
  end

  def movies
    @movies_record = Movie.all
  end

  def actors
    @actors_record = Actor.all
  end
  def selected_actor
    actor_id = params[:actor_id]
    @actor = Actor.where(id: actor_id).first
    @filmography = Character.all.where(actor_id: actor_id)
  end
  def selected_director
    director_id = params[:director_id]
    @director = Director.where(id: director_id).first
    @filmography = Movie.all.where(director_id: director_id)
  end
  def selected_movie
    movie_id = params[:movie_id]
    @movie = Movie.where(id: movie_id).first
    @director = Director.where(id: @movie[:director_id]).first
  end
end
