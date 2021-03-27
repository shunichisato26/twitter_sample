class TweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
  end

  def show
    @tweet = Tweet.find(params[:id])
    @like = Like.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user_id = current_user.id
    if @tweet.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private
    def tweet_params
      params.require(:tweet).permit(:content)
    end
end