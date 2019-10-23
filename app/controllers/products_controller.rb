class ProductsController < ApplicationController
    
    def index
        @products = Product.all
        @products = Donut.all if params[:query] == "donuts"
        @products = Beverage.all if params[:query] == "beverages"
        # byebug
    end

    def show
        @cart_item = ProductOrder.new
        @product = Product.find(params[:id])
        
    end
end
