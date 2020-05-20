class AddPriceToAdminProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_products, :price, :decimal
  end
end
