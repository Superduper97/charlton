class AddSpotlightToAdminProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_products, :spotlight, :boolean
  end
end
