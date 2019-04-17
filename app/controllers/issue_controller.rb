class IssueController < ApplicationController
  # before_action :group_params

  def index
  end

  def new
    @issue = Issue.new
    @group = Group.new
    @category = Category.new
    @category2 = Category.new
    @large_categories = Category.roots.where(group_id: group_params[:id])
    @middle_categories = Category.where(group_id: group_params[:id], division: 2)
    # @middle_categories = Category.メソッド.where(group_id: group_params[:id]) #『メソッド』の所に中カテゴリを抽出するメソッドかく
    # @small_categories = Category.メソッド.where(group_id: group_params[:id]) #『メソッド』の所に小カテゴリを抽出するメソッドかく
  end

  def create
  end

  # def move_index
  #   redirect_to action: :index unless user_signed_in?
  # end
  private
  def group_params
    Group.find(params[:group_id])
  end

  def issue_params
    params.require(:issue).permit(:title, :text, :small_tag, :middle_tag, :large_tag).merge(group_id: group_params.id)
  end

end
