class Event < ActiveRecord::Base
  belongs_to :user, counter_cache: :following_count
  belongs_to :user_target, class: User, counter_cache: :followed_count

  validates :kind, presence: true
  validates :user_id, uniqueness: { scope: [:user_target_id] }
end
