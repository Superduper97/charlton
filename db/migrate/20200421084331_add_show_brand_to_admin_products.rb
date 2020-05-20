class AddShowBrandToAdminProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_products, :show_brand, :boolean
  end
end
