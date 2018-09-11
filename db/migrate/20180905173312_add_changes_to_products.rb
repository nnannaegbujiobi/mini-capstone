class AddChangesToProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :description, :text
    change_column :products, :price, :"numeric USING CAST(price AS numeric)"
    add_column :products, :in_stock, :boolean 
  end
end
