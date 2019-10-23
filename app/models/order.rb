class Order < ApplicationRecord
    belongs_to :customer
    has_many :product_orders
    has_many :products, through: :product_orders

    def number_of_individual_products
        product_orders.sum { |product_order| product_order.quantity } 
    end

    def product_order_rows
        self.product_orders.map do |product_order|
            {
                id: product_order.id,
                name: product_order.product.name,
                price: product_order.product.price,
                quantity: product_order.quantity,
                total_price: product_order.product.price * product_order.quantity
            }
        end
    end

    def product_orders_total_cost 
        product_order_rows.sum { |product_description| product_description[:total_price] }
    end
end
