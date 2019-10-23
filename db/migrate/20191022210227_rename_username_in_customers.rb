class RenameUsernameInCustomers < ActiveRecord::Migration[6.0]
  def change
    rename_column :customers, :username, :email
  end
end
