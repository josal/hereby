class HomeController < ApplicationController
  def index
    @messages = Message.activity_feed_for(current_user) if current_user
  end
end
