class AddKillsToCharacter < ActiveRecord::Migration
  def change
  	  add_column :characters, :kills, :integer
  end
end
