class ApplicationController < ActionController::Base
  helper_method :current_customer, :cart_counter, :current_order



  def current_customer
    if session[:customer_id]
      @current_customer ||= Customer.find(session[:customer_id])
    else
      @current_customer = nil
    end
  end

  def current_order
    self.current_customer.last_order
  end

  def cart_counter
    self.current_order.number_of_individual_products
  end
end
