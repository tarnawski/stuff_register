class RenameColumnStuff < ActiveRecord::Migration
  def change
   rename_column :stuffs, :class_id, :room_id
  end
end
