class AddColumnToStuff < ActiveRecord::Migration
  def change
    add_column :stuffs, :funding_id, :integer
  end
end
