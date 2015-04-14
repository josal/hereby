class User < ActiveRecord::Base

  has_many :messages
  has_many :events

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates :name, presence: true, uniqueness: true
  
  def followed_by?(user_id)
    Event.exists?(user_id: user_id, user_target_id: self.id)
  end
  
end
