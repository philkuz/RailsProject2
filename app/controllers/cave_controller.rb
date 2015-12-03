class CaveController < ApplicationController
  def cave
      @links = {"Leave Cave" => root_path, "Deeper" => deeper_path}
  end
  def deeper
  	  @links = {"Leave Cave" => root_path, "Deeper" => deeper_path} 
  	  enemy
  end
  def attack
  	#@player = get_character
    enemy.health -= 10
  	redirect_to :back
  end
  def enemy
    @enemy = Character.create health: 20, hype: 2, armor: 0, damage: 2, 
      speed: 1, is_enemy: true, base_health: 20, base_damage: 2, 
      cash:5, name: "Cave Monster"
      #add image
  end
end
