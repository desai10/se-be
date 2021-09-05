class RoomController < ApplicationController
    def index
        rooms = Room.all
        render json: rooms
    end
    
    def create
        room = Room.new(room_params)
        if room.save
          head :ok
        end
    end
      
    private
      
    def room_params
        params.require(:room).permit(:title)
    end
end
