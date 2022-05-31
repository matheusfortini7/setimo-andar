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
  end

  def show
    @sale = Sale.find(params[:id])
  end

  def destroy
    @sale = Sale.find(params[:id])
    @sale.destroy
  end
end
