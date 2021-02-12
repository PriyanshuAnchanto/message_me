class MessagesController < ApplicationController
  before_action :require_user

  def new
  end

  def create
    message = current_user.messages.build(set_params)
    if message.save
      ActionCable.server.broadcast "chatroom_channel", msg: message_render(message)
    else
      flash[:error] = "error"
      render 'new'
    end
  end

  private

  def set_params
    params.require(:message).permit(:body)
  end

  def message_render(message)
    render(partial: 'message', locals: {message: message})
  end
end