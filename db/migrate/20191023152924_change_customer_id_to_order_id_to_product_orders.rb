class ChangeCustomerIdToOrderIdToProductOrders < ActiveRecord::Migration[6.0]
  def change
    rename_column :product_orders, :customer_id, :order_id
  end
end
