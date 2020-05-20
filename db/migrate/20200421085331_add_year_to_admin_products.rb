class AddYearToAdminProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_products, :year, :text
  end
end
