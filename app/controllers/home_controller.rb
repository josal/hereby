class HomeController < ApplicationController
  def index
    @messages = Message.where(user_id: User.followed_userids_by_user(current_user)) if current_user
  end
end
