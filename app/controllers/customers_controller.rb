class CustomersController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:create, :new]
    
    def show
        @customer = Customer.find(params[:id])
        @orders = @customer.orders
    end

    def new
        @customer = Customer.new
    end

    def create
        @customer = Customer.create(customer_params)
        if @customer.valid?
            session[:customer_id] = @customer.id # logging them in
            redirect_to @customer
        else
            flash[:error] = "Sorry-- unable to create account. Must be a valid email and password must be at least 8 characters"
            redirect_to new_customer_path
        end
    end

    def edit
        @customer = Customer.find(params[:id])
    end

    def update
        @customer = Customer.update(customer_params)
        redirect_to customer_path
    end

    private

    def customer_params
        params.require(:customer).permit(:email, :password, :name, :address)
    end
end
