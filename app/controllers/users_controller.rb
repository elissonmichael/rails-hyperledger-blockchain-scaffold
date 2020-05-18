class UsersController < ApplicationController
  def index; end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: 'User Created'
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.new(user_params)
    if @user.update
      redirect_to root_path, notice: 'User Updated'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:id, :value)
  end
end
