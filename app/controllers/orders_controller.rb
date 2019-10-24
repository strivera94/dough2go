class OrdersController < ApplicationController
  before_action :require_login

  def show
    @order = Order.find(params[:id])
    @items = @order.product_order_rows 
  end

  # order_path method: patch
  def update
    order = Order.find(params[:id])
    if order.product_orders.empty?
      flash[:order_complete_error] = "Sorry no items in cart."
      redirect_to order
    else
      order.update(completed?: true)
      redirect_to products_path
    end
  end
end
