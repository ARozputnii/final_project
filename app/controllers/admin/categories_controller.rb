class Admin::CategoriesController < ApplicationController
  before_action :set_category, only: %i[edit update destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path, notice: 'Category has been created'
    else
      render :new , alert: 'Something be wrong'
    end
  end

  def edit; end

  def update
    if @category.update(category_params)
      redirect_to admin_categories_path, notice: 'Category has been edited'
    else
      render :edit, alert: 'Something be wrong'
    end
  end

  def destroy
    if @category.destroy
      redirect_to  admin_categories_path, notice: 'Category has been destroy'
    else
      render :index , alert: 'Something be wrong'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
