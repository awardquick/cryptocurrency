class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      render text: "Thank you for signing up for CryptoCoinz! You will recieve an SMS shortly with verification instructions."
    else
      render :new
    end
  end


  private

  def user_params
    params.require(:user).permit(:email, :name, :phone)
    end
end
