class MainController < ApplicationController
    before_action :authenticate_player!
    def index
        @location= Location.find(1)
        @links = {"Cave" => cave_path, "Shop" => shop_path}
    end
    def sleep
        @player = current_player
        @character = @player.characters.find(1)

        @character.health = @character.base_health
        @character.damage = @characate.base_damage
        @character.save

        redirect_to root_path
    end
end
