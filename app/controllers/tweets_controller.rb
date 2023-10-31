class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
  end

  def create
    tweet = Tweet.new(message: params[:tweet][:message])
    tweet.save
    redirect_to tweets_path
  end

  def destory
    Tweets.find(params[:id]).destroy
    redirect_to tweets_path
  end
end
