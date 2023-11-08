class CartsController < ApplicationController
  def show
   @cart_item=Cartitems.where(current_cart)
   @total=@cart_item.inject(0){|sum,item| sum+item.sum_of_price}
  end
end
