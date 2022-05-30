class PropertiesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @property = Property.new(property_params)
    @property.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def property_params
    params.require(:property).permit(:title, :description, :street_name, :city_name, :state, :country, :price)
  end
end
