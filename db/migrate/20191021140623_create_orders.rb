class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer  :customer_id
      t.boolean :completed?
      t.timestamps
    end
  end
end
