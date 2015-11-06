class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :stuff_id
      t.boolean :in_stock
      t.string :comment

      t.timestamps
    end
  end
end
