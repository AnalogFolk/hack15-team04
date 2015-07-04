class RegisterController < ApplicationController
  def create
    @user = User.new(params.require(:user).permit(:username, :password, :password_confirmation))
    if @user.save
      flash[:register_success] = "Great. Now you can login."
    else
      flash[:register_danger] = "Something went wrong... try again"
    end

    redirect_to root_path
  end
end
