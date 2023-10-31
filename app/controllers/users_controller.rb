
class UsersController < ApplicationController
  def index
    @users = User.all
    logger.debug("*******")
    
  end

  def new
    @user = User.new 
  end

  def create
    p = BCrypt::Password.create(params[:user][:pass])
    user= User.new(uid: params[:user][:uid],pass: p)
    
    if user.save
      redirect_to root_path
    else
        render 'new'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = 'ユーザーを削除しました'
    redirect_to '/'
  end
end
