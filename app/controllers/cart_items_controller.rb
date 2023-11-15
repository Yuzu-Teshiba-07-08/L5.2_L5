class CartItemsController < ApplicationController
  def new
    @cart_id=current_cart.id
    @product_id=params[:product_id]
    @cartitem=Cartitem.new
  end

  def create
    @cart_id=params[:cartitem][:cart_id]
    @product_id=params[:cartitem][:product_id]
    @qty=params[:cartitem][:qty]
    @cartitem= Cartitem.new(cart_id: @cart_id,product_id: @product_id,qty: @qty)
    if @cartitem.save
      redirect_to carts_show_path
    else
      render "new"
    end
  end
    
    
    
    
  def destroy
    Cartitem.find(params[:id]).destroy
  end
end
