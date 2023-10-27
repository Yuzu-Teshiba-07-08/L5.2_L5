class UsersController < ApplicationController
  def index
    @user = User.all
    logger.debug("*******")
    
  end

  def new
    @user = User.new 
  end

  def create
    @user = User.new(uid: params[:uid],pass: params[:pass])
    if @user.save
        flash[:notice] = 'ユーザーを追加しました'
        redirect_to '/'
    else
        render 'new'
    end
  end

  def destroy
    user = User.find(params[:uid])
      user.destroy
      flash[:notice] = 'ユーザーを削除しました'
      redirect_to '/'
  end
end
