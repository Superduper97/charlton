class AddHoursToAdminProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_products, :hours, :text
  end
end
