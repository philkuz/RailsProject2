class WinController < ApplicationController
    def index
    	@player = get_character
    	@player.kills = 0
    	@player.health = @player.base_health
    	@player.cash = 30
    	@player.hype = 0
    	@player.save
    	i = 1
    	while i <= 5
    		a = Character.find_by(name: "Monster " + i.to_s)
    		a.health = a.base_health
    		a.save
    		i += 1
    	end	
    end
end
