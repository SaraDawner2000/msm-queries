class PagesController < ApplicationController
  def directors
    @directors_record = Director.all
  end

  def movies
    @dmovies_record = Movie.all
  end

  def actors
    @actors_record = Actor.all
  end
end
