class CaveController < ApplicationController
  def cave
      @links = {"Leave Cave" => root_path, "Deeper" => deeper_path}
  end
  def deeper
  end
  def enemy
  	@enemy = character.create health: 20, hype: 2
  end
end

