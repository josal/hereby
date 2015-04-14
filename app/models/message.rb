class Message < ActiveRecord::Base

  belongs_to :user, counter_cache: :messages_count
  
  validates :body, presence: true, length: {maximum: 160}

  scope :activity_feed_for, ->(user){ where(user_id: user.events.select(:user_target_id).map(&:user_target_id)) }
end
