class AddColumnToCartitems < ActiveRecord::Migration[5.0]
  def change
    add_column :cart_items, :product_id, :integer
    add_column :cart_items, :cart_id, :integer

  end
end
