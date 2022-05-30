class PropertiesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    @property = Property.find(params[:id])
    @property.update(property_params)

    redirect_to properties_path
  end

  def destroy
  end

end
