class CupsController < ApplicationController
  before_action :owner_login, except: %i(new create)
  def new
    @cup = current_user.cups.new
  end

  def create
    @cup = current_user.cups.build(cup_params)
    if @cup.save
      redirect_to edit_user_cup_url(current_user, @cup)
    else
      render :new
    end
  end

  def update
    if @cup = update_attributes(cup_params)
      redirect_to edit_user_cup_url(current_user, @cup)
    else
      render :edit
    end
  end

  def edit
    @cup = Cup.find(params[:id])
  end

  def destroy
    @cup = Cup.find(params[:id])
    @cup.destroy
    redirect_to(:root, notice: 'Logged out!')
  end

  def index
    @cups = current_user.cups.all
  end

  private
  def cup_params
    params.require(:cup).permit(:year, :status, :number, :color, :location, :size, :model, :manufacturer, :purchasing_date)
  end

  def owner_login
    @cup = Cup.find(params[:id])
    unless @cup.user == current_user
      redirect_to edit_user_cup_url(current_user, @cup), alert: 'Get the fuck outta here'
    end
  end
end
