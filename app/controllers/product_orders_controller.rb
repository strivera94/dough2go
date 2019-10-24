class ProductOrdersController < ApplicationController
  before_action :require_login

  def create 
    @product_order = ProductOrder.create(product_order_params.merge({order: current_customer.last_order}))
    @order = @product_order.order
    respond_to do |format|
      format.js 
    end
  end

  def show
    @items = current_customer.last_order.product_orders
  end

  def destroy
    @product_order = ProductOrder.find(params[:id])
    @product_order.destroy
    redirect_to current_customer.last_order
  end

  def update
    @product_order = ProductOrder.find(params[:id])
    @product_order.update(quantity: params[:quantity])
    redirect_to current_customer.last_order
  end

  private 
  def product_order_params
    params.require(:product_order).permit(:product_id, :quantity)
  end

  

end
