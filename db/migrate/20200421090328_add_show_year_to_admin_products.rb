class AddShowYearToAdminProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_products, :show_year, :boolean
  end
end
