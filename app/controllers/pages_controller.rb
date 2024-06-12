class PagesController < ApplicationController
  def directors
    @directors_record = Director.all
  end

  def movies
  end

  def actors
  end
end
