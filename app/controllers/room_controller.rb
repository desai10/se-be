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

    def update
        room = Room.find(params[:id])
        if room
            room.update(room_params)
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                RoomEditorTextSerializer.new(room)).serializable_hash

            EditorTextChannel.broadcast_to room, serialized_data

            head :ok
        else
            head :ok
        end
    end
      
    private
      
    def room_params
        params.require(:room).permit(:title, :editor_text)
    end
end
