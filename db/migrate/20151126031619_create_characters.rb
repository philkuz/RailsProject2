class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :health
      t.integer :hype
      t.integer :armor
      t.integer :damage
      t.integer :speed
      t.boolean :is_enemy

      t.timestamps null: false
    end
  end
end
