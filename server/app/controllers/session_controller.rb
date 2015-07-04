class SessionController < ApplicationController
  before_action :authenticate, only: [:index, :quit_user]

  def index
  end

  def create
    @user = User.find_by_username(params[:username])
    if @user and @user.authenticate(params[:password])
      login(@user, params[:remember])
      redirect_to '/session'
    else
      flash[:login_danger] = "Bad username or password"
      redirect_to root_path
    end
  end

  def destroy
    logout(params[:id])
    if params[:id]
      redirect_to '/session'
    else
      redirect_to root_path
    end
  end

  def quit_user
    logout_all
    redirect_to root_path
  end

  private
  def authenticate
    redirect_to root_path unless current_user
  end
end
