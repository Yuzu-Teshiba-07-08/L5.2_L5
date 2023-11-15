class CartsController < ApplicationController
  def show
    @cart_items=Cartitem.where(cart_id: current_cart.id)
  end
end
