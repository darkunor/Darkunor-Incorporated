class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def load_continents
     @continents = Continent.all
  end
  
end
