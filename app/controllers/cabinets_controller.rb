class CabinetsController < ApplicationController
  def show
    if current_user.present?
      @user = User.find(current_user.id)
      @posts = Post.all
    else
      redirect_to new_user_session_path
    end
  end
end
