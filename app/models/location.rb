class Location < ActiveRecord::Base
    has_many :near_places, class_name: "Location",
                          foreign_key: "current_place_id"

    belongs_to :current_place, class_name: "Location"
end
