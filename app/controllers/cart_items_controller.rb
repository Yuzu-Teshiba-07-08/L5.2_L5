class CartItemsController < ApplicationController
  def new
    @cartitem=Cartitem.new
  end

  def create
    @cartitem.new(
      cart_id: cart.find_by(cart_id: current_cart),
      qty: params[:cart_item][:qty],
      product_id: Product.find(params[:id]))
    @cartitem.save
     
    redirect_to new_cart_item_path
  end
    
   
 

  def destroy
    Cartitem.find(params[:id]).destroy
  end
end
