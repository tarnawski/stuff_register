class CreateCalsses < ActiveRecord::Migration
  def change
    create_table :calsses do |t|
      t.string :name

      t.timestamps
    end
  end
end
