class MainController < ApplicationController
    before_action :authenticate_player!
    def index
        @links = {"Cave" => cave_path, "Shop" => shop_path}
    end
    def sleep
        character = get_character
        character.health = character.base_health
        character.damage = character.base_damage
        character.save

        redirect_to root_path
    end
end
