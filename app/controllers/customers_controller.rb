class CustomersController < ApplicationController
    def show
        @customer = Customer.find(params[:id])
    end

    def new
        @customer = Customer.new
    end

    def create
        @customer = Customer.create(customer_params)
        if @customer.valid?
            session[:customer_id] = @customer.id # logging them in
            redirect_to customer_path
        else
            flash[:error] = "Sorry-- unable to create account"
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
