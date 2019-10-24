class ProductsController < ApplicationController
    
    def index
        if params[:sort]
            case params[:query]
            when "donuts"
                @products = Donut.sort_by_cheapest if params[:sort] == "cheapest"
                @products = Donut.sort_by_most_expensive if params[:sort] == "most_expensive"
                @products = Donut.sort_by_rating if params[:sort] == "highest_rated"
            when "beverages"
                @products = Beverage.sort_by_cheapest if params[:sort] == "cheapest"
                @products = Beverage.sort_by_most_expensive if params[:sort] == "most_expensive"
                @products = Beverage.sort_by_rating if params[:sort] == "highest_rated"
            else
                @products = Product.sort_by_cheapest if params[:sort] == "cheapest"
                @products = Product.sort_by_most_expensive if params[:sort] == "most_expensive"
                @products = Product.sort_by_rating if params[:sort] == "highest_rated"
            end
        else
            @products = Product.all
            @products = Donut.all if params[:query] == "donuts"
            @products = Beverage.all if params[:query] == "beverages"
        end
        
        # byebug
    end

    def show
        @cart_item = ProductOrder.new
        @product = Product.find(params[:id])
        
    end
end
