class ShopController < ApplicationController
  def shop_items
  	@boots = {"Rainbow Boots" => [10,0,0,10], "Sweet Boots Yo" => [20,0,0,20], "#1 Public Boots in the Nation" => [100,0,0,100]}
  	@swords = {"Sword 61A" => [10,10,0,0], "Sword 61B" => [20,20,5,0], "Sword 61C" => [100,50,0,20]}
  	@shields = {"Shield.0" => [10,0,10,0], "MegaShield" => [15,0,15,0], "UltraShield" => [25,0,25,0]}
  	@items = [@boots,@swords,@shields]
  end
  def shop
  	#key: name value: cost, damage, armor, speed
    @prompt = params[:prompt]
    if @prompt
        @prompt = @prompt.to_i
        p "promptme",@prompt
        if @prompt == 0
            @message = "Congrats on your succesful purchase of "+ params[:name]
        elsif @prompt ==2
            @message = "Not enough moolah"
        else
            @message = "You don't even have a wallet"
        end
    end
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
        @cash = @character.cash
        @character.save
        @item = params[:name]
        redirect_to shop_path(0, @item)

    elsif !@character.cash
        # character cash is not existent - nil value
        redirect_to shop_path(1)
    else
        # Not enough money
        redirect_to shop_path(2)
    end
  end
end
