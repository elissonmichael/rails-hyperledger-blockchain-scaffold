class UsersController < ApplicationController
  def index; end

  def show
    @user = User.show(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: 'User Created'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:id, :value)
  end
end
