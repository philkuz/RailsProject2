class ShopController < ApplicationController
  def shop_items
  	@boots = {"Rainbow Boots" => [10,0,0,10], "Sweet Boots Yo" => [20,0,0,20], "#1 Public Boots in the Nation" => [100,0,0,100]}
  	@swords = {"Sword 61A" => [10,10,0,0]}
  	@shields = {"Shield.0" => [10,0,10,0]}
  	@items = [@boots,@swords,@shields]
  end
  def shop
  	#key: name value: cost, damage, armor, speed
  	@items = shop_items
  	@boots = @items[0]
  	@swords = @items[1]
  	@shields = @items[2]
  end
  def buy
  	@items = shop_items
  	@character = get_character
  	@type = @items[params[:type].to_i]
	@item = @type[params[:name]]

	if @character.cash && @character.cash >= @item[0].to_i 
		@character.cash -= @item[0]
		@character.items.create name: params[:name], cost: @item[0], damage: @item[1], armor: @item[2], speed: @item[3]
    end
  end
end
