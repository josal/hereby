class Event < ActiveRecord::Base
  belongs_to :user, counter_cache: :following_count
  belongs_to :user_target, class: User, counter_cache: :followers_count

  validates :kind, presence: true
  validates :user_id, uniqueness: { scope: [:user_target_id] }
  
  scope :user_following, ->(user_id) { where(user_id: user_id).select(:user_target_id).distinct.map(&:user_target) }
  scope :user_followers, ->(user_id) { where(user_target_id: user_id).select(:user_id).distinct.map(&:user) }  
end
