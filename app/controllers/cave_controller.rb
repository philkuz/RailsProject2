class CaveController < ApplicationController
  def cave
      @links = {"Leave Cave" => root_path, "Deeper" => deeper_path}
  end
  def deeper
      
  end
end
