class AddBaseHealthAndDamageToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :base_health, :integer
    add_column :characters, :base_damage, :integer
  end
end
