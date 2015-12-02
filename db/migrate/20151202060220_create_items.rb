class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :damage
      t.integer :armor
      t.integer :speed
      t.integer :cost

      t.timestamps null: false
    end
  end
end
