class AddBrandToAdminProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_products, :brand, :text
  end
end
