class UsersController < ApplicationController
  def index; end

  def show
    @response = UserChaincode.show(params[:id])
  end
end
