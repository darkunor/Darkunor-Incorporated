class CountriesController < ApplicationController
  before_filter :load_continents, except: [:update, :create, :delete]
  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  def create
    Country.create params[:country]
    redirect_to countries_path
  end

  def show
    @country = Country.find params[:id] 

  end

  def edit
    @country = Country.find params[:id]
  end

  def update
    @country = Country.find params[:id]
    @country.update_attributes params[:country]
    redirect_to @country
  end

  def destroy
    @country = Country.find params[:id]
    @country.destroy
    redirect_to countries_path
  end

end