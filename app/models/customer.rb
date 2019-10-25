class Customer < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :password, length:{ minimum: 8 }

    has_many :orders
    has_many :product_orders, through: :orders
    has_many :products, through: :product_orders
    has_many :reviews

    attr_accessor :password_confirmation

    def self.find_by_email(email)
        Customer.find_by("email = ?", email)
    end

    def last_order
        if self.orders.last == nil || self.orders.last.completed? 
            return Order.create(customer: self, completed?: false) 
        else
            return self.orders.last
        end
        # self.last_order =  Order.create(customer: self, completed?: false) if last_order.completed?
    end

    def cart_include?(product)
        last_order.products.include?(product)
    end
end
