class TweetController < ApplicationController
  def index
     @tweets = Tweet.all
      logger.debug("*******")
      logger.debug(@tweets.first.message)
  end

  def new
     @tweet = Tweet.new
  end

  def create
     @tweet = Tweet.new(message: params[:tweet][:message], tdate: Time.current)
      if @tweet.save
        flash[:notice] = '1レコード追加しました'
        redirect_to '/'
      else
        render 'new'
      end
  end

  def destory
     tweet = Tweet.find(params[:id])
      tweet.destroy
      flash[:notice] = '1レコード削除しました'
      redirect_to '/'
  end
end
