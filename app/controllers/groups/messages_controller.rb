class Groups::MessagesController < ApplicationController

  def index
    @groups = current_user.groups
    @group = Group.find(params[:group_id])
    @message = Message.new
    @messages = @group.messages.includes(:user)
  end

  def create
    @message = current_user.messages.new(message_params)

    if @message.save
      flash[:notice] = '送信成功'
    else
      flash[:alert] = @message.errors.full_messages.join("。")
    end

    redirect_to group_messages_path(params[:group_id])
  end

  private

  def message_params
    params.require(:message).permit(:comment, :image).merge(group_id: params[:group_id])
  end

end

