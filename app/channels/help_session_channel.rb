# channel for recieving notifications during a help session
class HelpSessionChannel < ApplicationCable::Channel
    def subscribed
        stream_from "chat_#{params[:room]}"
    end
end