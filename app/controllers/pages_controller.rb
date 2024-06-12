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
  end
  def selected_director
  end
  def selected_movie
  end
end
