class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :user_target, class: User

  validates :kind, presence: true
end
