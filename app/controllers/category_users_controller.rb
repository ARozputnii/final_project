class CategoryUsersController < ApplicationController
  before_action :set_user

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to cabinet_path(@user), notice: 'Categories has been added'
    else
      render :edit, alert: 'Something be wrong'
    end
  end

  private

  def user_params
    params.require(:user).permit(category_ids: [])
  end

  def set_user
    @user = User.find(current_user.id)
  end
end
