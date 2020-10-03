class ApplicationController < ActionController::Base
  
  include SessionsHelper
  
  private
  
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def counts_user(user)
    @count_microposts = user.microposts.count
    @count_followings = user.followings.count
    @count_followers = user.followers.count
    @count_favorite_microposts = user.favorite_microposts.count
  end
  
  def counts_micropost(micropost)
    @count_favorite_users = micropost.farvorite_users.count
  end
end
