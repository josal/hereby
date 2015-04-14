class HomeController < ApplicationController
  def index
    @messages = Message.where(user: current_user.events.map(&:user_target)) if current_user
  end
end
