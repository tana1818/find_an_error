class GroupController < ApplicationController
  # before_action :set_group

  def new
    @group = Group.new
    @my_group = Group.where(user_id: current_user.id)
  end

  def create
    Group.create(name: group_params[:name],password: group_params[:password], user_id: current_user.id)
    redirect_to new_group_path
  end

  def favorite_group
    set_group
  end

  private
  def group_params
    params.require(:group).permit(:name, :password)
  end

  def set_group
    @group = Group.find(params[:id])
  end

end
