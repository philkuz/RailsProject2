class AddCashToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :cash, :integer
  end
end
