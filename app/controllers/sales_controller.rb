class SalesController < ApplicationController
  def create
    @sale = Sale.new
    @property = Property.find(params[:property_id])
    @sale.property = @property
    @sale.user = current_user

    if @sale.save
      redirect_to property_sale_path(@property, @sale)
    else
      render 'properties/show'
    end
    skip_authorization
  end

  def show
    @sale = Sale.find(params[:id])
    @property = Property.find(params[:property_id])
    @property.user = current_user
    @property.save
    skip_authorization
  end
end
