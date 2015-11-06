class RemoveAndAddTableInStuff < ActiveRecord::Migration
  def change
    remove_column :stuffs, :in_stock
    add_column :stuffs, :inventory_id, :integer
  end
end
