class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @items = @order.product_order_rows 
  end
end
