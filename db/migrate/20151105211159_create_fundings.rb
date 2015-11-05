class CreateFundings < ActiveRecord::Migration
  def change
    create_table :fundings do |t|
      t.string :name

      t.timestamps
    end
  end
end
