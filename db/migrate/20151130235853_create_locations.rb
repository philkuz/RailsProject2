class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :image

      t.timestamps null: false
    end
  end
end