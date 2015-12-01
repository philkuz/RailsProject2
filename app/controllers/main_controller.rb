class MainController < ApplicationController
    before_action :authenticate_player!
    def index
        @location= Location.find(1)
        @links = ["https://i.ytimg.com/vi/wZrZxyRBAlM/maxresdefault.jpg"]
    end
end
