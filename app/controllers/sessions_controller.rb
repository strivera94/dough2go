class SessionsController < ApplicationController
  before_action :require_login, only: :destroy
  
  def new
  end

  def create
    customer = Customer.find_by_email(params[:email])
    if customer && customer.authenticate(params[:password])
      session[:customer_id] = customer.id # encrypt this bitch eventually
      redirect_to customer
    else
    end
  end

  def destroy
    session[:customer_id] = nil
    redirect_to home_path
  end

  private 

end
