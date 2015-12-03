class CaveController < ApplicationController
  def cave
      @links = {"Leave Cave" => root_path, "Deeper" => deeper_path}
  end
  def deeper
  	  @links = {"Leave Cave" => root_path, "Deeper" => deeper_path}
      @player = get_character
      if params[:id] 
        @enemy = Character.find(params[:id].to_i)
        $last_id = @enemy.id
        p "params exist"
      elsif @player.kills == 5
        redirect_to win_path
        p "win"
      else
        @enemy =Character.find_by(name: "Monster " + (@player.kills + 1).to_s)
        p "next monster"
        $last_id = @enemy.id
      end
        #find by where is enemy is true 
  end
  def attack
    @player = get_character
    @enemy = Character.find(params[:id].to_i)
    @enemy.health -= @player.damage
    @enemy.save

    if @enemy.health <= 0
      @player.kills += 1
      @player.cash += @enemy.cash
      @player.hype += @enemy.hype
      @enemy.health = 0
      @player.save
      @enemy.save
    else
      @player.health -= @enemy.damage
      @player.save
    end

  	redirect_to deeper_path(params[:id])
  end
end
