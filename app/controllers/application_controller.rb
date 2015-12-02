class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_player!
  helper_method :get_health, :get_damage
  def get_character
      player = current_player
      if player
          character =player.characters.find(1)
      else
          character = nil
      end
  end
  def get_health
      character = get_character
      if character
          health = character.health.to_s + "/"+character.base_health.to_s
      end
  end
  def get_damage
      character = get_character
      if character
          damage = character.damage.to_s + "/"+character.base_damage.to_s
      end
  end



end
