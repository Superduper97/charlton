class AddCategoryToAdminProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_products, :category, :text
  end
end
