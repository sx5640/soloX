class UsersController < ApplicationController
  skip_before_action :require_login, only: %i(new create)
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to root_url
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(current_user)
  end

  def update
    @user = User.find(current_user)
    if @user.update_attributes(user_params_edit)
      redirect_to current_user
    else
      render :edit
    end
  end

  private
  def user_params_edit
    params.require(:user).permit(:email)
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)

  end
end
