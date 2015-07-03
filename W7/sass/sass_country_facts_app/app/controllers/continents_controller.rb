class ContinentsController < ApplicationController
  before_filter :load_continents, except: [:update, :create, :delete]
  def index
    @continents = Continent.all
  end

  def new
    @continent = Continent.new
  end

  def create
    Continent.create params[:continent]
    redirect_to countries_path
  end

  def show
    @continent = Continent.find params[:id] 

  end

  def edit
    @continent = Continent.find params[:id]
  end

  def update
    @continent = Continent.find params[:id]
    @continent.update_attributes params[:continent]
    redirect_to @continent
  end

  def destroy
    @continent = Continent.find params[:id]
    @continent.destroy
    redirect_to countries_path
  end

end