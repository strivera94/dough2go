class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string  :username
      t.string  :password
      t.string  :name
      t.string  :address
      t.timestamps
    end
  end
end
