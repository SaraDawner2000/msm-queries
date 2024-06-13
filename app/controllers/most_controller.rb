class MostController < ApplicationController
  def youngest
    @youngest_director = Director.all.order(dob: :desc).first
  end

  def eldest
    @eldest_director = Director.all.order(:dob).first
  end
end
