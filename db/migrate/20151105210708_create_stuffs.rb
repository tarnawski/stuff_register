class CreateStuffs < ActiveRecord::Migration
  def change
    create_table :stuffs do |t|
      t.string :name
      t.string :description
      t.float :price
      t.boolean :in_stock
      t.integer :type_id
      t.integer :room_id
      t.integer :user_id
      t.integer :funding_id

      t.timestamps
    end
  end
end
