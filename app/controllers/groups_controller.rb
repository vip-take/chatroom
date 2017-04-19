class GroupsController < ApplicationController

  before_action :set_group, only: [:edit, :update]
  before_action :set_users, only: [:new, :edit]

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to messages_path, notice: '成功しました'
    else
      flash.now[:alert] = '失敗しました'
      render :new
    end
  end

  def edit ; end

  def update
    if @group.update(group_params)
      redirect_to messages_path, notice: '更新に成功しました'
    else
      flash.now[:alert] = '更新に失敗しました'
      render :edit
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, user_ids: [])
  end

  def set_group
    @group = Group.find(params[:id])
  end

  def set_users
    @users = User.except_for(current_user.id)
  end

end

