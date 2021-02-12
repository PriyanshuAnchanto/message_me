class MessagesController < ApplicationController
  before_action :require_user

  def new
  end

  def create
    @message = current_user.messages.build(set_params)
    if @message.save
      redirect_to root_path
    else
      flash[:error] = "error"
      render 'new'
    end
  end

  private

  def set_params
    params.require(:message).permit(:body)
  end

end