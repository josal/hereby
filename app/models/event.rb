class Event < ActiveRecord::Base
  belongs_to :user

  validates :user_target_id, presence: true
  validates :kind, presence: true
end
