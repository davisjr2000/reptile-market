class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = @user.email.split("@")[0]
  end
end
