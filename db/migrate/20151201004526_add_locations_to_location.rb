class AddLocationsToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :location, :has_and_belongs_to_many
  end
end
