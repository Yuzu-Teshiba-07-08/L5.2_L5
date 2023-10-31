class UsersController < ApplicationController
  def index
    @users = User.all
    logger.debug("*******")
    
  end

  def new
    @user = User.new 
  end

  def create
    @user = User.new(uid: params[:user][:uid],pass: params[:user][:pass])
    if @user.save
      redirect_to root_path
        # flash[:notice] = 'ユーザーを追加しました'
        # redirect_to '/'
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
