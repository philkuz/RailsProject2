class AddPlayerToCharacter < ActiveRecord::Migration
  def change
    add_reference :characters, :player, index: true, foreign_key: true
  end
end
