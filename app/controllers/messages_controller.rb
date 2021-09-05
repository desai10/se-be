class MessagesController < ApplicationController
    def index
        nessages = Message.all
        render json: message
    end

    def create
        message = Message.new(message_params)
        if message.save
            ActionCable.server.broadcast 'messages_channel', message
            head :ok
        else
            head :ok
        end
    end

    private
    
    def message_params
        params.require(:message).permit(:content)
    end
end
