class CartsController < ApplicationController
  def show
   @cart_item=Cartitems.all
   @total=@cart_item.inject(0){|sum,item| sum+item.sum_of_price}
  end
end
