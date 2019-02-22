class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
  end

  def index
    @user = User.all
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :age)
  end
end
