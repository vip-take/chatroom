class GroupsController < ApplicationController

  before_action :set_group, only: [:edit, :update]

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      flash[:notice] = '成功しました'
      redirect_to messages_path
    else
      flash.now[:alert] = '失敗しました'
      render 'new'
    end
  end

  def edit ; end

  def update
    if @group.update(group_params)
      flash[:notice] = '更新に成功しました'
      redirect_to messages_path
    else
      flash.now[:alert] = '更新に失敗しました'
      render 'edit'
    end
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end

  def set_group
    @group = Group.find(params[:id])
  end

end
