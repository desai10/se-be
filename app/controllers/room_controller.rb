class RoomController < ApplicationController
    def index
        rooms = Room.all
        render json: rooms
    end
    
    def create
        room = Room.new(room_params)
        if room.save
            render json: room
        else
            render json: {"error": "somethign went wrong!"}
        end
    end

    def show
        room = Room.find(params[:id])
        render json: room
    end
      
    private
      
    def room_params
        params.require(:room).permit(:title)
    end
end
