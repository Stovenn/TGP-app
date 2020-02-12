class UserController < ApplicationController
  def show
    @user =  User.find(params[:id])
    @id = @user.city.id
  end
end
