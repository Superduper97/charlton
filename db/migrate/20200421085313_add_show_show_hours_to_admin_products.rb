class AddShowShowHoursToAdminProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_products, :show_hours, :boolean
  end
end
