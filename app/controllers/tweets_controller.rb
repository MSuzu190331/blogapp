class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order("created_at DESC")
  end

  def new
  end

  def create
    Tweet.create(tweet_params)
  end

  private
  def tweet_params
    params.permit(:name, :image, :text)
  end
#
#   def destroy
#     tweet = Tweet.find(params[:id])
#     tweet.destroy if tweet.user_id == current_user.id
#   end
#
#   def edit
#     @tweet = Tweet.find(params[:id])
#   end
#
#   def update
#     tweet = Tweet.find(params[:id])
#     tweet.update(tweet_params) if tweet.user_id == current_user.id
#   end
#
#   def move_to_index
#     redirect_to root_path unless user_signed_in?
#   end
#
#   private
#   def tweet_params
#     params.permit(:image, :text)
#   end
end
