class CategoryController < ApplicationController

  # before_action :group_params

  # def new
  # end

  def create
    # binding.pry
    if category_params[:division] == "1"
      @category = Category.create(category_params) #@category = @group.categories.new(category_params)と一緒の意味
      if @category.save
        redirect_to new_group_issue_path(group_params)
      else
        # redirect_to new_group_issue_path(group_params), alert: '保存に失敗しました'
      end
    end


    # if @category.parent_id != nil
    # if @category.name(category_params) != @category2.name(category_params2)
    # binding.pry
    # @category3 = @category2.children.create(category_params3)
    # child.children.create(category_params)
    # root = Category.create
    # binding.pry
    # return if @category.parent_id == nil
    if category_params[:division] == "2"
      @category2 = Category.create(category_params)
      if @category2.save
        redirect_to new_group_issue_path(group_params)
      else
        # redirect_to new_group_issue_path(group_params), alert: '保存に失敗しました'
      end
    end

  end

  private
  def category_params
    params.require(:category).permit(:name, :parent_id, :division).merge(group_id: group_params.id)
  end

  def group_params
    @group = Group.find(params[:group_id])
  end

end
