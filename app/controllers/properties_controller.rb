class PropertiesController < ApplicationController
  def index
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
